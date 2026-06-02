#!/usr/bin/env bash

export SAISEI_NAV2_LAB="${SAISEI_NAV2_LAB:-$HOME/saisei_ws/gazebo_lab/nav2_lab}"
export TURTLEBOT3_MODEL="${TURTLEBOT3_MODEL:-waffle}"
export GZ_SIM_RESOURCE_PATH="$SAISEI_NAV2_LAB/worlds:$SAISEI_NAV2_LAB/models:${GZ_SIM_RESOURCE_PATH:-}"
export PATH="$SAISEI_NAV2_LAB/.tools/node/bin:$SAISEI_NAV2_LAB/.tools/npm-global/bin:$PATH"

if [[ -f /opt/ros/jazzy/setup.bash ]]; then
  # shellcheck disable=SC1091
  source /opt/ros/jazzy/setup.bash
fi

if [[ -f "$SAISEI_NAV2_LAB/ws/install/setup.bash" ]]; then
  # shellcheck disable=SC1091
  source "$SAISEI_NAV2_LAB/ws/install/setup.bash"
fi
