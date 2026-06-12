# Hourly Nav2 Report

- generated_at: 2026-06-12T22:07:01+09:00
- total_trials: 2786
- latest_git: a3166d0 hourly nav2 report 2026-06-12 21:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 59 | 55 | 0.932 | 5.27 | 1.00 | 7.00 |
| baseline-north-control | 60 | 54 | 0.900 | 40.17 | 1.00 | 50.00 |
| baseline-smoke-control | 59 | 52 | 0.881 | 3.36 | 1.00 | 5.00 |
| fast-east | 120 | 102 | 0.850 | 4.80 | 1.00 | 7.00 |
| fast-north | 120 | 106 | 0.883 | 40.63 | 0.00 | 50.00 |
| relaxed-north | 118 | 101 | 0.856 | 37.19 | 1.00 | 50.00 |
| relaxed-smoke | 120 | 106 | 0.883 | 3.40 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 59 | 45 | 0.763 | 43.86 | 0.00 | 121.00 |
| yaw-east-pos | 59 | 50 | 0.847 | 13.10 | 1.00 | 29.00 |
| yaw-north-pos | 59 | 46 | 0.780 | 3.64 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 394
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2379

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T21:41:57+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T21:44:02+0900 | yaw-east-neg-r1 | success | true | 17 |
| 2026-06-12T21:46:08+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T21:48:58+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-12T21:50:53+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T21:52:48+0900 | baseline-north-control-r1 | success | true | 11 |
| 2026-06-12T21:54:47+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T21:56:42+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T21:58:37+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-12T22:01:14+0900 | fast-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T22:03:05+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T22:04:57+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |

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
1113134 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1152112 bash ./scripts/run_nav2_trial.sh
1152307 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
1152866 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
