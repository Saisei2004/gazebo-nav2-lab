# Hourly Nav2 Report

- generated_at: 2026-06-12T20:07:02+09:00
- total_trials: 2732
- latest_git: 2a91119 hourly nav2 report 2026-06-12 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 55 | 51 | 0.927 | 5.24 | 1.00 | 7.00 |
| baseline-north-control | 56 | 50 | 0.893 | 40.25 | 1.00 | 50.00 |
| baseline-smoke-control | 55 | 48 | 0.873 | 3.33 | 1.00 | 5.00 |
| fast-east | 112 | 94 | 0.839 | 4.73 | 1.00 | 7.00 |
| fast-north | 112 | 99 | 0.884 | 40.83 | 0.00 | 50.00 |
| relaxed-north | 112 | 95 | 0.848 | 36.96 | 1.00 | 50.00 |
| relaxed-smoke | 112 | 99 | 0.884 | 3.42 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 55 | 42 | 0.764 | 44.29 | 0.00 | 121.00 |
| yaw-east-pos | 55 | 46 | 0.836 | 12.91 | 1.00 | 29.00 |
| yaw-north-pos | 55 | 44 | 0.800 | 3.71 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 389
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2330

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T19:39:44+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T19:42:38+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T19:44:31+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T19:46:27+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T19:49:04+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T19:50:59+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T19:52:54+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T19:55:32+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T19:58:10+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T20:00:02+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T20:01:55+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-12T20:04:31+0900 | relaxed-north-r2 | success | true | 29 |

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
837289 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
890501 bash ./scripts/run_nav2_trial.sh
890722 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
891462 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
