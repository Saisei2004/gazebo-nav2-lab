#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [[ -f ./env.sh ]]; then
  # ROS setup files may read unset variables, so source them before strict mode.
  set +u
  # shellcheck disable=SC1091
  source ./env.sh
  set -u
fi

echo "== System =="
uname -a
cat /etc/os-release | sed -n '1,8p'
echo "arch=$(dpkg --print-architecture)"

echo
echo "== Commands =="
missing=0
for cmd in gz ros2 colcon; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "OK $cmd -> $(command -v "$cmd")"
  else
    echo "MISSING $cmd"
    missing=1
  fi
done

if [[ ! -f /opt/ros/jazzy/setup.bash ]]; then
  echo "MISSING /opt/ros/jazzy/setup.bash"
  missing=1
fi

echo
echo "== Versions =="
gz sim --versions 2>/dev/null || gz --versions 2>/dev/null || true
ros2 --version 2>/dev/null || true

echo
echo "== ROS packages =="
for pkg in nav2_bringup nav2_bt_navigator nav2_controller nav2_planner nav2_minimal_tb3_sim; do
  if ros2 pkg prefix "$pkg" >/dev/null 2>&1; then
    echo "OK $pkg"
  else
    echo "MISSING $pkg"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo
  echo "Stack is incomplete. Run ./scripts/install_ros_nav2_turtlebot3.sh with sudo first."
  exit 2
fi

echo
echo "Nav2 stack looks installed."
