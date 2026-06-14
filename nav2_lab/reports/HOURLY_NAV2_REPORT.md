# Hourly Nav2 Report

- generated_at: 2026-06-14T23:07:01+09:00
- total_trials: 4117
- latest_git: 60405b6 hourly nav2 report 2026-06-14 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 154 | 143 | 0.929 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 155 | 130 | 0.839 | 38.41 | 1.00 | 50.00 |
| baseline-smoke-control | 154 | 132 | 0.857 | 3.46 | 1.00 | 6.00 |
| fast-east | 310 | 265 | 0.855 | 4.87 | 1.00 | 7.00 |
| fast-north | 310 | 266 | 0.858 | 39.12 | 0.00 | 50.00 |
| relaxed-north | 309 | 268 | 0.867 | 36.02 | 1.00 | 50.00 |
| relaxed-smoke | 310 | 273 | 0.881 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 154 | 127 | 0.825 | 39.10 | 0.00 | 121.00 |
| yaw-east-pos | 154 | 139 | 0.903 | 14.05 | 1.00 | 54.00 |
| yaw-north-pos | 154 | 127 | 0.825 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 570
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3532

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T22:40:50+0900 | yaw-east-neg-r1 | success | true | 20 |
| 2026-06-14T22:43:01+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T22:45:55+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-14T22:47:49+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T22:49:38+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T22:51:30+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-14T22:53:27+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T22:55:24+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T22:58:02+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-14T23:00:41+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T23:02:33+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T23:04:27+0900 | relaxed-north-r1 | success | true | 10 |

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
3352463 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3397497 bash ./scripts/run_nav2_trial.sh
3397569 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
3399103 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
