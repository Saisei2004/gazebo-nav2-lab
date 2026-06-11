#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

run_id="${RUN_ID:-manual}"
lane="${LANE:-known_environment_optimization}"
world="${WORLD:-tb3_sandbox}"
world_sdf="${WORLD_SDF:-/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro}"
map_yaml="${MAP_YAML:-/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml}"
start_x="${START_X:--2.0}"
start_y="${START_Y:--0.5}"
start_yaw="${START_YAW:-0.0}"
goal_x="${GOAL_X:--1.0}"
goal_y="${GOAL_Y:--0.5}"
goal_yaw="${GOAL_YAW:-0.0}"
start_pose="${START_POSE:-$start_x,$start_y,$start_yaw}"
goal_pose="${GOAL_POSE:-$goal_x,$goal_y,$goal_yaw}"
params="${PARAMS:-baseline}"
params_file=""
if [[ "$params" == */* || "$params" == *.yaml ]]; then
  params_file="$params"
elif [[ -f "params/${params}.yaml" ]]; then
  params_file="params/${params}.yaml"
fi
timeout_sec="${TRIAL_TIMEOUT_SEC:-180}"
startup_timeout_sec="${STARTUP_TIMEOUT_SEC:-90}"
logs_dir="${LOGS_DIR:-logs/trials}"
timestamp="$(date +%Y%m%d-%H%M%S)"
trial_id="${run_id}_${timestamp}"
trial_dir="$logs_dir/$trial_id"
launch_log="$trial_dir/launch.log"
goal_log="$trial_dir/goal.log"
summary_json="$trial_dir/summary.json"

mkdir -p "$trial_dir"

if ! command -v ros2 >/dev/null 2>&1 || ! command -v gz >/dev/null 2>&1; then
  echo "ROS 2 or gz is missing. Run scripts/install_ros_nav2_turtlebot3.sh first."
  ./scripts/append_report_entry.py \
    --run="$run_id" \
    --lane="$lane" \
    --environment="$world" \
    --params="$params" \
    --start="$start_pose" \
    --goal="$goal_pose" \
    --status="skipped_missing_stack" \
    --metrics="{}" \
    --conclusion="Cannot run Nav2 trial until ROS 2 and Gazebo are installed." \
    --next-action="Install stack and rerun check_nav2_stack.sh"
  exit 2
fi

if [[ "${NAV2_TRIAL_FAKE:-0}" == "1" ]]; then
  echo "Ready to send goal (fake mode)"
  printf '{"run_id":"%s","status":"fake_success","success":true}\n' "$run_id" > "$summary_json"
  ./scripts/append_report_entry.py \
    --run="$run_id" \
    --lane="$lane" \
    --environment="$world" \
    --params="$params" \
    --start="$start_pose" \
    --goal="$goal_pose" \
    --status="fake_success" \
    --metrics="{\"trial_dir\":\"$trial_dir\"}" \
    --conclusion="Fake Nav2 trial completed for harness validation." \
    --next-action="Run without NAV2_TRIAL_FAKE after stack verification."
  exit 0
fi

launch_pid=""
cleanup() {
  if [[ -n "$launch_pid" ]] && kill -0 "$launch_pid" >/dev/null 2>&1; then
    kill -- "-$launch_pid" >/dev/null 2>&1 || kill "$launch_pid" >/dev/null 2>&1 || true
    wait "$launch_pid" >/dev/null 2>&1 || true
  fi
  ./scripts/cleanup_nav2_trial.sh >/dev/null 2>&1 || true
}
trap cleanup EXIT INT TERM

if [[ "${CLEANUP_EXISTING:-1}" == "1" ]]; then
  ./scripts/cleanup_nav2_trial.sh >/dev/null 2>&1 || true
fi

echo "Starting Nav2 trial $trial_id"
echo "world=$world_sdf"
echo "map=$map_yaml"
echo "start=$start_pose goal=$goal_pose"

launch_args=(
  headless:=True
  use_rviz:=False
  slam:=False
  map:="$map_yaml"
  world:="$world_sdf"
  x_pose:="$start_x"
  y_pose:="$start_y"
  on_exit_shutdown:=true
)
if [[ -n "$params_file" ]]; then
  launch_args+=(params_file:="$params_file")
fi

setsid ros2 launch nav2_bringup tb3_simulation_launch.py "${launch_args[@]}" \
  > "$launch_log" 2>&1 &
launch_pid="$!"

echo "Waiting for Nav2 action server..."
deadline=$((SECONDS + startup_timeout_sec))
ready=0
while (( SECONDS < deadline )); do
  if ros2 action list 2>/dev/null | grep -qx "/navigate_to_pose"; then
    ready=1
    break
  fi
  sleep 2
done

if [[ "$ready" -ne 1 ]]; then
  echo "Nav2 action server did not become ready within ${startup_timeout_sec}s" | tee "$goal_log"
  tail -n 120 "$launch_log" || true
  ./scripts/append_report_entry.py \
    --run="$run_id" \
    --lane="$lane" \
    --environment="$world" \
    --params="$params" \
    --start="$start_pose" \
    --goal="$goal_pose" \
    --status="failed_startup_timeout" \
    --metrics="{\"trial_dir\":\"$trial_dir\",\"startup_timeout_sec\":$startup_timeout_sec}" \
    --conclusion="Nav2 action server was not ready before timeout." \
    --next-action="Inspect launch log and improve launch readiness checks."
  exit 3
fi

echo "Ready to send goal"

initial_pose_msg=$(python3 - "$start_x" "$start_y" "$start_yaw" <<'PY'
import math
import sys
x, y, yaw = map(float, sys.argv[1:4])
z = math.sin(yaw / 2.0)
w = math.cos(yaw / 2.0)
print("{header: {frame_id: map}, pose: {pose: {position: {x: %.6f, y: %.6f, z: 0.0}, orientation: {x: 0.0, y: 0.0, z: %.9f, w: %.9f}}, covariance: [0.25, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0685389]}}" % (x, y, z, w))
PY
)

for _ in 1 2 3 4 5; do
  ros2 topic pub --once /initialpose geometry_msgs/msg/PoseWithCovarianceStamped "$initial_pose_msg" >/dev/null 2>&1 || true
  sleep 1
done

goal_msg=$(python3 - "$goal_x" "$goal_y" "$goal_yaw" <<'PY'
import math
import sys
x, y, yaw = map(float, sys.argv[1:4])
z = math.sin(yaw / 2.0)
w = math.cos(yaw / 2.0)
print("{pose: {header: {frame_id: map}, pose: {position: {x: %.6f, y: %.6f, z: 0.0}, orientation: {x: 0.0, y: 0.0, z: %.9f, w: %.9f}}}}" % (x, y, z, w))
PY
)

start_epoch="$(date +%s)"
set +e
timeout "$timeout_sec" ros2 action send_goal /navigate_to_pose nav2_msgs/action/NavigateToPose "$goal_msg" --feedback > "$goal_log" 2>&1
goal_rc=$?
set -e
end_epoch="$(date +%s)"
duration=$((end_epoch - start_epoch))

status="failed"
success=false
if grep -Eq "Goal finished with status: SUCCEEDED|STATUS_SUCCEEDED|status: STATUS_SUCCEEDED|status.*succeeded" "$goal_log"; then
  status="success"
  success=true
elif grep -Eq "Goal finished with status: ABORTED|Goal failed|STATUS_ABORTED" "$goal_log"; then
  status="failed_goal_aborted"
elif [[ "$goal_rc" -eq 124 ]]; then
  status="failed_goal_timeout"
else
  status="failed_goal_rc_${goal_rc}"
fi

cat > "$summary_json" <<EOF
{
  "run_id": "$run_id",
  "trial_id": "$trial_id",
  "lane": "$lane",
  "world": "$world",
  "world_sdf": "$world_sdf",
  "map_yaml": "$map_yaml",
  "params": "$params",
  "params_file": "$params_file",
  "start_pose": "$start_pose",
  "goal_pose": "$goal_pose",
  "status": "$status",
  "success": $success,
  "duration_sec": $duration,
  "goal_return_code": $goal_rc,
  "trial_dir": "$trial_dir"
}
EOF

./scripts/append_report_entry.py \
  --run="$run_id" \
  --lane="$lane" \
  --environment="$world" \
  --params="$params" \
  --start="$start_pose" \
  --goal="$goal_pose" \
  --status="$status" \
  --metrics="{\"success\":$success,\"duration_sec\":$duration,\"goal_return_code\":$goal_rc,\"trial_dir\":\"$trial_dir\"}" \
  --conclusion="Nav2 trial completed with status $status." \
  --next-action="Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution."

echo "Trial summary: $summary_json"
cat "$summary_json"

if [[ "$success" == "true" ]]; then
  exit 0
fi
exit 4
