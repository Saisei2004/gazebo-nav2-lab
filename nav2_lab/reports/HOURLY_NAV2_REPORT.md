# Hourly Nav2 Report

- generated_at: 2026-06-16T12:07:01+09:00
- total_trials: 5118
- latest_git: 225d664 hourly nav2 report 2026-06-16 11:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 226 | 203 | 0.898 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 227 | 186 | 0.819 | 37.56 | 1.00 | 50.00 |
| baseline-smoke-control | 226 | 192 | 0.850 | 3.43 | 1.00 | 6.00 |
| fast-east | 452 | 392 | 0.867 | 4.90 | 1.00 | 7.00 |
| fast-north | 452 | 391 | 0.865 | 39.59 | 0.00 | 50.00 |
| relaxed-north | 452 | 385 | 0.852 | 35.29 | 1.00 | 51.00 |
| relaxed-smoke | 452 | 402 | 0.889 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 226 | 188 | 0.832 | 40.71 | 0.00 | 121.00 |
| yaw-east-pos | 226 | 202 | 0.894 | 13.96 | 1.00 | 54.00 |
| yaw-north-pos | 226 | 192 | 0.850 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 705
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4395

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T11:39:43+0900 | fast-north-r1 | success | true | 11 |
| 2026-06-16T11:41:45+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T11:44:22+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-16T11:46:14+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T11:48:06+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T11:50:43+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T11:53:20+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-16T11:55:25+0900 | yaw-east-neg-r1 | success | true | 24 |
| 2026-06-16T11:57:39+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T12:00:32+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-16T12:02:26+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T12:04:16+0900 | baseline-north-control-r1 | success | true | 49 |

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
3933079 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3947092 bash ./scripts/run_nav2_trial.sh
3947262 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
3947623 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
