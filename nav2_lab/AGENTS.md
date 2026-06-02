# Codex Instructions For Nav2 Optimization Lab

You are working inside Saisei's Gazebo + Nav2 optimization lab.

## Objective

Continuously improve TurtleBot-class navigation in Gazebo and Nav2 across:

1. Known environment optimization
2. Unknown environment optimization
3. Autonomous exploration development

## Required Discipline

- Primary workspace: this directory.
- Target stack: ROS 2 Jazzy, Gazebo Harmonic / Gz Sim, Nav2, TurtleBot3 Waffle.
- Use `gz` / `gz sim`, not Gazebo Classic `gazebo`.
- Do not run `sudo`.
- If `gz`, `ros2`, or Nav2 are missing, improve setup, checks, experiment design, metric extraction, and docs. Do not claim experiments ran.
- Keep changes measurable. Every improvement needs a baseline, metric, or test.

## Reporting

Append findings to:

- `reports/RUN_LOG.md`
- `reports/LITERATURE_NOTES.md`
- `reports/IMPROVEMENT_IDEAS.md`

Every entry should include timestamp, run/cycle id, lane, environment id, robot model, parameter id, start/goal when applicable, metrics or missing-stack reason, conclusion, and next action.

## Useful Commands

```bash
source ./env.sh
./scripts/check_nav2_stack.sh
./scripts/generate_worlds.py --all
./scripts/list_experiments.py
```

After the human installs ROS/Gazebo/Nav2:

```bash
source ./env.sh
./scripts/launch_tb3_baseline.sh
```
