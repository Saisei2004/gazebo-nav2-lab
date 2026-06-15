# Hourly Nav2 Report

- generated_at: 2026-06-15T15:07:01+09:00
- total_trials: 4551
- latest_git: 6b9e201 hourly nav2 report 2026-06-15 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 185 | 167 | 0.903 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 186 | 153 | 0.823 | 37.59 | 1.00 | 50.00 |
| baseline-smoke-control | 185 | 158 | 0.854 | 3.43 | 1.00 | 6.00 |
| fast-east | 372 | 320 | 0.860 | 4.87 | 1.00 | 7.00 |
| fast-north | 372 | 319 | 0.858 | 39.17 | 0.00 | 50.00 |
| relaxed-north | 371 | 319 | 0.860 | 35.91 | 1.00 | 51.00 |
| relaxed-smoke | 372 | 332 | 0.892 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 185 | 154 | 0.832 | 39.68 | 0.00 | 121.00 |
| yaw-east-pos | 185 | 166 | 0.897 | 13.88 | 1.00 | 54.00 |
| yaw-north-pos | 185 | 155 | 0.838 | 3.83 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 630
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3905

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T14:40:06+0900 | yaw-east-neg-r1 | success | true | 24 |
| 2026-06-15T14:42:19+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T14:45:13+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-15T14:47:05+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-15T14:49:01+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-15T14:51:37+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-15T14:53:31+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T14:55:26+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-15T14:58:03+0900 | fast-north-r2 | success | true | 24 |
| 2026-06-15T15:00:17+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-15T15:02:12+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T15:04:05+0900 | relaxed-north-r1 | success | true | 48 |

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
1219789 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1266958 bash ./scripts/run_nav2_trial.sh
1267000 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
1267946 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
