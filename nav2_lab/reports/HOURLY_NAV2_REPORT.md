# Hourly Nav2 Report

- generated_at: 2026-06-16T17:07:01+09:00
- total_trials: 5253
- latest_git: 7f95e0d hourly nav2 report 2026-06-16 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 235 | 211 | 0.898 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 236 | 195 | 0.826 | 37.80 | 1.00 | 50.00 |
| baseline-smoke-control | 235 | 200 | 0.851 | 3.45 | 1.00 | 6.00 |
| fast-east | 472 | 409 | 0.867 | 4.89 | 1.00 | 7.00 |
| fast-north | 472 | 410 | 0.869 | 39.61 | 0.00 | 50.00 |
| relaxed-north | 472 | 402 | 0.852 | 35.10 | 1.00 | 51.00 |
| relaxed-smoke | 472 | 419 | 0.888 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 235 | 196 | 0.834 | 41.14 | 0.00 | 121.00 |
| yaw-east-pos | 236 | 211 | 0.894 | 13.95 | 1.00 | 54.00 |
| yaw-north-pos | 235 | 201 | 0.855 | 3.89 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 718
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4516

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T16:41:52+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T16:43:44+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T16:45:38+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-16T16:48:15+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T16:50:10+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T16:52:04+0900 | fast-north-r1 | success | true | 31 |
| 2026-06-16T16:54:25+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T16:57:01+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T16:58:54+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T17:00:49+0900 | relaxed-north-r1 | success | true | 32 |
| 2026-06-16T17:03:11+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-16T17:05:01+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 2 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
316165 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
349886 bash ./scripts/run_nav2_trial.sh
349950 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
350278 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
