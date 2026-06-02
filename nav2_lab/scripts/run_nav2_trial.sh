#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

run_id="${RUN_ID:-manual}"
lane="${LANE:-known_environment_optimization}"
world="${WORLD:-known_warehouse_small}"
start_pose="${START_POSE:-0,0,0}"
goal_pose="${GOAL_POSE:-1,1,0}"
params="${PARAMS:-baseline}"

if ! command -v ros2 >/dev/null 2>&1 || ! command -v gz >/dev/null 2>&1; then
  echo "ROS 2 or gz is missing. Run scripts/install_ros_nav2_turtlebot3.sh first."
  ./scripts/append_report_entry.py \
    --run "$run_id" \
    --lane "$lane" \
    --environment "$world" \
    --params "$params" \
    --start "$start_pose" \
    --goal "$goal_pose" \
    --status "skipped_missing_stack" \
    --metrics "{}" \
    --conclusion "Cannot run Nav2 trial until ROS 2 and Gazebo are installed." \
    --next-action "Install stack and rerun check_nav2_stack.sh"
  exit 2
fi

echo "TODO: launch Gazebo + Nav2 trial for $world"
echo "This harness is intentionally conservative until stack installation is verified."
./scripts/append_report_entry.py \
  --run "$run_id" \
  --lane "$lane" \
  --environment "$world" \
  --params "$params" \
  --start "$start_pose" \
  --goal "$goal_pose" \
  --status "planned_not_executed" \
  --metrics "{}" \
  --conclusion "Stack exists, but full launch orchestration still needs implementation." \
  --next-action "Implement launch, action goal dispatch, bag/log capture, and metric extraction."
