# Hourly Nav2 Report

- generated_at: 2026-06-16T16:07:01+09:00
- total_trials: 5225
- latest_git: 61fb7ea hourly nav2 report 2026-06-16 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 233 | 210 | 0.901 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 234 | 193 | 0.825 | 37.71 | 1.00 | 50.00 |
| baseline-smoke-control | 233 | 198 | 0.850 | 3.44 | 1.00 | 6.00 |
| fast-east | 468 | 406 | 0.868 | 4.90 | 1.00 | 7.00 |
| fast-north | 468 | 406 | 0.868 | 39.57 | 0.00 | 50.00 |
| relaxed-north | 468 | 399 | 0.853 | 35.29 | 1.00 | 51.00 |
| relaxed-smoke | 468 | 416 | 0.889 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 233 | 194 | 0.833 | 41.13 | 0.00 | 121.00 |
| yaw-east-pos | 234 | 210 | 0.897 | 14.00 | 1.00 | 54.00 |
| yaw-north-pos | 233 | 199 | 0.854 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 713
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4493

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T15:39:51+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T15:41:41+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-16T15:43:35+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-16T15:46:13+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T15:48:06+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T15:50:00+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T15:52:38+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-16T15:55:16+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T15:57:09+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T15:59:01+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T16:01:38+0900 | relaxed-north-r2 | success | true | 18 |
| 2026-06-16T16:03:45+0900 | yaw-east-pos-r1 | success | true | 14 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
217574 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
266400 bash ./scripts/run_nav2_trial.sh
266466 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
267491 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
