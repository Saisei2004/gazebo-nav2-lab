# Hourly Nav2 Report

- generated_at: 2026-06-12T00:07:02+09:00
- total_trials: 2194
- latest_git: 44cbe0a hourly nav2 report 2026-06-11 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 17 | 17 | 1.000 | 5.41 | 5.00 | 7.00 |
| baseline-north-control | 18 | 17 | 0.944 | 42.28 | 3.00 | 50.00 |
| baseline-smoke-control | 17 | 15 | 0.882 | 3.41 | 1.00 | 4.00 |
| fast-east | 36 | 29 | 0.806 | 4.53 | 1.00 | 7.00 |
| fast-north | 34 | 28 | 0.824 | 38.85 | 0.00 | 50.00 |
| relaxed-north | 34 | 29 | 0.853 | 35.09 | 1.00 | 49.00 |
| relaxed-smoke | 34 | 30 | 0.882 | 3.50 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 17 | 16 | 0.941 | 49.88 | 1.00 | 115.00 |
| yaw-east-pos | 17 | 14 | 0.824 | 13.59 | 1.00 | 29.00 |
| yaw-north-pos | 17 | 16 | 0.941 | 4.06 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 311
- runner_failed: 10
- success: 1873

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T23:40:00+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-11T23:41:52+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-11T23:43:45+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-11T23:46:22+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T23:48:12+0900 | yaw-east-pos-r1 | success | true | 29 |
| 2026-06-11T23:50:31+0900 | yaw-east-neg-r1 | success | true | 81 |
| 2026-06-11T23:53:41+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-11T23:56:36+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-11T23:58:28+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T00:00:25+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T00:03:02+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T00:04:57+0900 | fast-east-r2 | success | true | 5 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
2440333 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2463202 bash ./scripts/run_nav2_trial.sh
2463311 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2463828 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
