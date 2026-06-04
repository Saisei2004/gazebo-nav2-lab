#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

world="${1:-$(pwd)/worlds/known_warehouse_small.sdf}"
params_file="${2:-}"
headless="${HEADLESS:-True}"
slam="${SLAM:-False}"
use_rviz="${USE_RVIZ:-False}"
use_simulator="${USE_SIMULATOR:-True}"
gz_args="${GZ_ARGS:-}"
x_pose="${START_X:-${X_POSE:--2.00}}"
y_pose="${START_Y:-${Y_POSE:--0.50}}"

if ! command -v ros2 >/dev/null 2>&1; then
  echo "ros2 not found. Run scripts/install_ros_nav2_turtlebot3.sh first."
  exit 2
fi

args=(
  nav2_bringup
  tb3_simulation_launch.py
  "headless:=${headless}"
  "slam:=${slam}"
  "use_rviz:=${use_rviz}"
  "use_simulator:=${use_simulator}"
  "world:=${world}"
  "x_pose:=${x_pose}"
  "y_pose:=${y_pose}"
)

if [[ -n "$gz_args" ]]; then
  args+=("gz_args:=${gz_args}")
fi

if [[ -n "$params_file" ]]; then
  args+=("params_file:=${params_file}")
fi

echo "ros2 launch ${args[*]}"
ros2 launch "${args[@]}"
