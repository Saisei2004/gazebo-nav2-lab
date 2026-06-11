# Hourly Nav2 Report

- generated_at: 2026-06-12T07:07:01+09:00
- total_trials: 2381
- latest_git: 7e5f2d2 hourly nav2 report 2026-06-12 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 30 | 29 | 0.967 | 5.40 | 2.00 | 7.00 |
| baseline-north-control | 31 | 28 | 0.903 | 41.71 | 1.00 | 50.00 |
| baseline-smoke-control | 30 | 27 | 0.900 | 3.33 | 1.00 | 4.00 |
| fast-east | 62 | 51 | 0.823 | 4.65 | 1.00 | 7.00 |
| fast-north | 62 | 53 | 0.855 | 39.74 | 0.00 | 50.00 |
| relaxed-north | 61 | 53 | 0.869 | 37.85 | 1.00 | 50.00 |
| relaxed-smoke | 62 | 51 | 0.823 | 3.34 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 30 | 27 | 0.900 | 48.37 | 0.00 | 121.00 |
| yaw-east-pos | 30 | 27 | 0.900 | 14.00 | 1.00 | 29.00 |
| yaw-north-pos | 30 | 29 | 0.967 | 4.27 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 333
- failed_goal_timeout: 1
- runner_failed: 10
- success: 2037

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T06:42:10+0900 | yaw-east-neg-r1 | success | true | 23 |
| 2026-06-12T06:44:22+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-12T06:47:17+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T06:49:10+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T06:51:04+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T06:53:41+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T06:55:36+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T06:57:32+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T06:59:21+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T07:01:11+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-12T07:03:05+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 3 |
| 2026-06-12T07:04:56+0900 | relaxed-north-r1 | success | true | 9 |

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
3339406 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3382567 bash ./scripts/run_nav2_trial.sh
3382608 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
3383085 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
