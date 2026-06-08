#!/usr/bin/env bash
set -euo pipefail

if command -v ros2 >/dev/null 2>&1; then
  ros2 daemon stop >/dev/null 2>&1 || true
fi

patterns=(
  "ros2 launch nav2_bringup tb3_simulation_launch.py"
  "gz sim -r -s /tmp/nav2_"
  "ros_gz_bridge/parameter_bridge"
  "robot_state_publisher/robot_state_publisher"
  "rclcpp_components/component_container_isolated"
)

for pattern in "${patterns[@]}"; do
  pids="$(pgrep -f "$pattern" || true)"
  if [[ -n "$pids" ]]; then
    echo "$pids" | xargs -r kill -TERM || true
  fi
done

if command -v ros2 >/dev/null 2>&1; then
  ros2 daemon stop >/dev/null 2>&1 || true
fi

sleep 2

for pattern in "${patterns[@]}"; do
  pids="$(pgrep -f "$pattern" || true)"
  if [[ -n "$pids" ]]; then
    echo "$pids" | xargs -r kill -KILL || true
  fi
done
