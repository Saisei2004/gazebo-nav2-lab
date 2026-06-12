# Hourly Nav2 Report

- generated_at: 2026-06-12T16:07:01+09:00
- total_trials: 2625
- latest_git: c64bad5 hourly nav2 report 2026-06-12 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 48 | 44 | 0.917 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 48 | 43 | 0.896 | 40.56 | 1.00 | 50.00 |
| baseline-smoke-control | 48 | 42 | 0.875 | 3.29 | 1.00 | 5.00 |
| fast-east | 96 | 79 | 0.823 | 4.69 | 1.00 | 7.00 |
| fast-north | 96 | 83 | 0.865 | 39.96 | 0.00 | 50.00 |
| relaxed-north | 96 | 82 | 0.854 | 36.76 | 1.00 | 50.00 |
| relaxed-smoke | 96 | 84 | 0.875 | 3.45 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 48 | 37 | 0.771 | 44.00 | 0.00 | 121.00 |
| yaw-east-pos | 48 | 41 | 0.854 | 13.19 | 1.00 | 29.00 |
| yaw-north-pos | 48 | 39 | 0.812 | 3.75 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 377
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2236

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T15:41:04+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T15:43:00+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T15:45:38+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T15:47:28+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T15:49:21+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T15:51:15+0900 | relaxed-north-r1 | success | true | 11 |
| 2026-06-12T15:53:15+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T15:55:52+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T15:57:56+0900 | yaw-east-neg-r1 | success | true | 18 |
| 2026-06-12T16:00:03+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T16:02:56+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-12T16:04:50+0900 | baseline-east-control-r1 | success | true | 6 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
358751 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
367239 bash ./scripts/run_nav2_trial.sh
367280 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
368215 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
