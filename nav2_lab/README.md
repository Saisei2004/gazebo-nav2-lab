# Nav2 Optimization Lab

This is the working environment for continuous Nav2 optimization on DGX.

The target stack is:

- Ubuntu 24.04 Noble
- ROS 2 Jazzy
- Gazebo Harmonic / Gz Sim
- Nav2
- TurtleBot3 Waffle as the first "large TurtleBot" baseline

## Mission Lanes

1. Known environment optimization
   - Maps and worlds are fixed.
   - Tune Nav2 parameters against repeated pose and goal trials.
   - Measure success rate, time to goal, path length, recovery count, collision/proximity incidents, and CPU/GPU/runtime cost.

2. Unknown environment optimization
   - Worlds are randomized or withheld from the planner map.
   - Evaluate robustness against unseen obstacle layouts, start angles, goal placements, and partial maps.

3. Autonomous exploration
   - Develop and compare frontier, information-gain, random, coverage, and hybrid exploration systems.
   - Measure explored-map ratio, time to coverage thresholds, stuck rate, and recovery behavior.

## First Human Step

Gazebo / ROS / Nav2 packages need sudo, so run this once on DGX:

```bash
cd ~/saisei_ws/gazebo_lab/nav2_lab
./scripts/install_ros_nav2_turtlebot3.sh
```

If `apt-get update` fails with `EXPKEYSIG CD63F8B21266DE3C svc-workbench`, refresh the NVIDIA AI Workbench apt key first:

```bash
./scripts/fix_nvidia_workbench_apt_key.sh
./scripts/install_ros_nav2_turtlebot3.sh
```

After install:

```bash
source ./env.sh
./scripts/check_nav2_stack.sh
./scripts/generate_worlds.py --all
./scripts/list_experiments.py
```

## Use Codex Inside This Lab

Codex CLI can be installed locally inside this workspace without sudo:

```bash
cd ~/saisei_ws/gazebo_lab/nav2_lab
./scripts/install_codex_cli.sh
source ./env.sh
./scripts/codex_nav2.sh
```

Custom prompt:

```bash
./scripts/codex_nav2.sh prompts/codex_nav2_default.md
```

## Run Book

The agent should keep appending every experiment and finding to:

- `reports/RUN_LOG.md`
- `reports/LITERATURE_NOTES.md`
- `reports/IMPROVEMENT_IDEAS.md`

Each entry must include:

- timestamp
- run number
- lane
- environment id
- parameter set id
- robot model
- start pose and goal pose
- metrics
- conclusion
- next action

## Current Reality

If `gz`, `ros2`, or Nav2 commands are missing, the agent must not pretend experiments ran. It should improve setup scripts, experiment definitions, generators, metrics, and documentation until the human completes installation.
