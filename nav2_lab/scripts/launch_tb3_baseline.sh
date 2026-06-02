#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

world="${1:-$(pwd)/worlds/known_warehouse_small.sdf}"
params_file="${2:-}"
headless="${HEADLESS:-True}"
slam="${SLAM:-False}"

if ! command -v ros2 >/dev/null 2>&1; then
  echo "ros2 not found. Run scripts/install_ros_nav2_turtlebot3.sh first."
  exit 2
fi

args=(
  nav2_bringup
  tb3_simulation_launch.py
  "headless:=${headless}"
  "slam:=${slam}"
  "world:=${world}"
)

if [[ -n "$params_file" ]]; then
  args+=("params_file:=${params_file}")
fi

echo "ros2 launch ${args[*]}"
ros2 launch "${args[@]}"
