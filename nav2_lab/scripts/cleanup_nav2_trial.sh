#!/usr/bin/env bash
set -euo pipefail

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

sleep 2

for pattern in "${patterns[@]}"; do
  pids="$(pgrep -f "$pattern" || true)"
  if [[ -n "$pids" ]]; then
    echo "$pids" | xargs -r kill -KILL || true
  fi
done
