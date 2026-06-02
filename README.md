# Saisei Gazebo Lab

This workspace is the Gazebo-focused development area for DGX.

## Current Target

- OS: Ubuntu 24.04 Noble
- Architecture: arm64
- Simulator track: Gazebo Harmonic first, because it is the recommended Gazebo release when pairing Ubuntu 24.04 with ROS 2 Jazzy.

Gazebo is not installed yet on this DGX host. The install script below follows the official Gazebo Harmonic binary installation flow and requires sudo once.

## Install

Run this on DGX:

```bash
cd ~/saisei_ws/gazebo_lab
./install_gazebo_harmonic.sh
```

Then verify:

```bash
./scripts/check_gazebo.sh
```

## First Run

After installation:

```bash
gz sim -s -r worlds/saisei_empty.sdf
```

For GUI use from a machine with display forwarding configured:

```bash
gz sim worlds/saisei_empty.sdf
```

## Layout

- `worlds/`: SDF worlds and simulation scenes.
- `models/`: local models and robot assets.
- `scripts/`: install and verification helpers.
- `notes/`: setup research, compatibility notes, and findings.

## Agent Contract

The persistent overseer in `~/saisei_ws/dev_agent` should treat this directory as the primary workspace for Gazebo work. It should improve worlds, scripts, tests, docs, and ROS 2 integration plans without running sudo by itself.
