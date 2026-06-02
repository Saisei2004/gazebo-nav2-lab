#!/usr/bin/env bash
set -euo pipefail

echo "[nav2-lab] Installing ROS 2 Jazzy, Nav2, Gazebo Harmonic, and TurtleBot3 support."
echo "[nav2-lab] This requires sudo and may take a while."

sudo apt-get update
sudo apt-get install -y curl gnupg lsb-release software-properties-common

if [[ ! -f /etc/apt/sources.list.d/ros2.sources && ! -f /etc/apt/sources.list.d/ros2.list ]]; then
  ros_apt_source_version="$(
    curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest \
      | grep -F "tag_name" \
      | awk -F'"' '{print $4}'
  )"
  ubuntu_codename="$(. /etc/os-release && echo "${UBUNTU_CODENAME:-${VERSION_CODENAME}}")"
  curl -L -o /tmp/ros2-apt-source.deb \
    "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ros_apt_source_version}/ros2-apt-source_${ros_apt_source_version}.${ubuntu_codename}_all.deb"
  sudo dpkg -i /tmp/ros2-apt-source.deb
fi

if [[ ! -f /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg ]]; then
  sudo curl https://packages.osrfoundation.org/gazebo.gpg \
    --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
fi

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] https://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" \
  | sudo tee /etc/apt/sources.list.d/gazebo-stable.list >/dev/null

sudo apt-get update
sudo apt-get install -y \
  ros-jazzy-desktop \
  ros-jazzy-navigation2 \
  ros-jazzy-nav2-bringup \
  ros-jazzy-nav2-minimal-tb3-sim \
  ros-jazzy-nav2-minimal-tb4-sim \
  gz-harmonic \
  python3-colcon-common-extensions \
  python3-pip \
  python3-venv \
  jq

echo "[nav2-lab] Done. Now run:"
echo "  source ~/saisei_ws/gazebo_lab/nav2_lab/env.sh"
echo "  ~/saisei_ws/gazebo_lab/nav2_lab/scripts/check_nav2_stack.sh"
