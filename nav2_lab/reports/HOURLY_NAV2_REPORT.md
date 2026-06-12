# Hourly Nav2 Report

- generated_at: 2026-06-12T15:07:01+09:00
- total_trials: 2597
- latest_git: bef9c0e hourly nav2 report 2026-06-12 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 46 | 42 | 0.913 | 5.17 | 1.00 | 7.00 |
| baseline-north-control | 46 | 41 | 0.891 | 40.24 | 1.00 | 50.00 |
| baseline-smoke-control | 46 | 40 | 0.870 | 3.26 | 1.00 | 5.00 |
| fast-east | 92 | 75 | 0.815 | 4.65 | 1.00 | 7.00 |
| fast-north | 92 | 80 | 0.870 | 40.12 | 0.00 | 50.00 |
| relaxed-north | 92 | 80 | 0.870 | 37.70 | 1.00 | 50.00 |
| relaxed-smoke | 92 | 80 | 0.870 | 3.43 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 46 | 35 | 0.761 | 44.83 | 0.00 | 121.00 |
| yaw-east-pos | 46 | 40 | 0.870 | 13.39 | 1.00 | 29.00 |
| yaw-north-pos | 46 | 38 | 0.826 | 3.78 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 372
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2213

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T14:39:46+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T14:41:40+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-12T14:44:17+0900 | fast-north-r2 | success | true | 50 |
| 2026-06-12T14:46:57+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T14:48:48+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-12T14:50:41+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-12T14:53:18+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T14:55:55+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T14:57:59+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T14:59:49+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T15:02:43+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T15:04:36+0900 | baseline-east-control-r1 | success | true | 5 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
229390 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
237481 bash ./scripts/run_nav2_trial.sh
237522 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
238910 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
