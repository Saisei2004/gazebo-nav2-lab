# Hourly Nav2 Report

- generated_at: 2026-06-14T12:07:01+09:00
- total_trials: 3821
- latest_git: e29a2e7 hourly nav2 report 2026-06-14 11:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 133 | 123 | 0.925 | 5.19 | 1.00 | 7.00 |
| baseline-north-control | 134 | 112 | 0.836 | 37.92 | 1.00 | 50.00 |
| baseline-smoke-control | 133 | 116 | 0.872 | 3.51 | 1.00 | 6.00 |
| fast-east | 268 | 229 | 0.854 | 4.87 | 1.00 | 7.00 |
| fast-north | 268 | 226 | 0.843 | 38.47 | 0.00 | 50.00 |
| relaxed-north | 266 | 229 | 0.861 | 35.77 | 1.00 | 50.00 |
| relaxed-smoke | 267 | 234 | 0.876 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 133 | 108 | 0.812 | 39.77 | 0.00 | 121.00 |
| yaw-east-pos | 133 | 118 | 0.887 | 13.92 | 1.00 | 54.00 |
| yaw-north-pos | 133 | 109 | 0.820 | 3.77 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 540
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3266

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T11:39:55+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T11:42:32+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T11:44:35+0900 | yaw-east-neg-r1 | success | true | 46 |
| 2026-06-14T11:47:11+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-14T11:50:05+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-14T11:52:00+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T11:53:56+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T11:56:33+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T11:58:27+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T12:00:22+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-14T12:03:00+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T12:04:50+0900 | relaxed-smoke-r1 | success | true | 4 |

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
1915804 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1952293 bash ./scripts/run_nav2_trial.sh
1952449 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
1953270 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
