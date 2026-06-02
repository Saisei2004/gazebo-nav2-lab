#!/usr/bin/env bash
set -euo pipefail

echo "[gazebo-lab] Installing Gazebo Harmonic for Ubuntu $(lsb_release -cs) / $(dpkg --print-architecture)"
echo "[gazebo-lab] This follows the official Gazebo binary install flow and will ask for your sudo password."

if command -v gz >/dev/null 2>&1; then
  echo "[gazebo-lab] Existing gz command found:"
  gz sim --versions || gz --versions || true
  echo "[gazebo-lab] Skipping install."
  exit 0
fi

sudo apt-get update
sudo apt-get install -y curl lsb-release gnupg

sudo curl https://packages.osrfoundation.org/gazebo.gpg \
  --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] https://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" \
  | sudo tee /etc/apt/sources.list.d/gazebo-stable.list >/dev/null

sudo apt-get update
sudo apt-get install -y gz-harmonic

echo "[gazebo-lab] Installed:"
gz sim --versions || gz --versions
