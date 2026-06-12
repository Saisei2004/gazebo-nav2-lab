# Hourly Nav2 Report

- generated_at: 2026-06-12T23:07:01+09:00
- total_trials: 2814
- latest_git: c83a788 hourly nav2 report 2026-06-12 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 61 | 56 | 0.918 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 62 | 56 | 0.903 | 39.94 | 1.00 | 50.00 |
| baseline-smoke-control | 61 | 54 | 0.885 | 3.38 | 1.00 | 5.00 |
| fast-east | 124 | 105 | 0.847 | 4.77 | 1.00 | 7.00 |
| fast-north | 124 | 109 | 0.879 | 40.50 | 0.00 | 50.00 |
| relaxed-north | 122 | 103 | 0.844 | 36.80 | 1.00 | 50.00 |
| relaxed-smoke | 124 | 110 | 0.887 | 3.40 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 61 | 47 | 0.770 | 43.05 | 0.00 | 121.00 |
| yaw-east-pos | 61 | 51 | 0.836 | 12.92 | 1.00 | 29.00 |
| yaw-north-pos | 61 | 48 | 0.787 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 400
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2401

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T22:41:11+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T22:43:14+0900 | yaw-east-neg-r1 | success | true | 18 |
| 2026-06-12T22:45:21+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T22:48:14+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-12T22:50:07+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T22:52:03+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-12T22:54:41+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T22:56:35+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T22:58:29+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T23:01:07+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T23:02:58+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T23:04:50+0900 | relaxed-smoke-r2 | success | true | 4 |

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
1242654 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1283055 bash ./scripts/run_nav2_trial.sh
1283094 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
1284052 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
