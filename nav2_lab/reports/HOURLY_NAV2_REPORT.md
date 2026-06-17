# Hourly Nav2 Report

- generated_at: 2026-06-17T11:07:02+09:00
- total_trials: 5737
- latest_git: 1635c85 hourly nav2 report 2026-06-17 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 270 | 244 | 0.904 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 271 | 226 | 0.834 | 37.92 | 1.00 | 50.00 |
| baseline-smoke-control | 270 | 229 | 0.848 | 3.42 | 1.00 | 6.00 |
| fast-east | 542 | 472 | 0.871 | 4.92 | 1.00 | 7.00 |
| fast-north | 541 | 474 | 0.876 | 40.09 | 0.00 | 50.00 |
| relaxed-north | 540 | 464 | 0.859 | 35.25 | 0.00 | 51.00 |
| relaxed-smoke | 540 | 480 | 0.889 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 270 | 226 | 0.837 | 41.13 | 0.00 | 121.00 |
| yaw-east-pos | 270 | 238 | 0.881 | 13.73 | 1.00 | 54.00 |
| yaw-north-pos | 270 | 229 | 0.848 | 3.86 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 772
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4944

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T10:39:42+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T10:41:35+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-17T10:44:12+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T10:46:01+0900 | yaw-east-pos-r1 | success | true | 17 |
| 2026-06-17T10:48:08+0900 | yaw-east-neg-r1 | success | true | 23 |
| 2026-06-17T10:50:20+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-17T10:53:11+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-17T10:55:05+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-17T10:57:01+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T10:59:38+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T11:01:34+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-17T11:03:30+0900 | fast-north-r1 | success | true | 48 |

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
2620351 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2648745 bash ./scripts/run_nav2_trial.sh
2648964 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2651181 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
