# Hourly Nav2 Report

- generated_at: 2026-06-08T16:31:03+09:00
- total_trials: 35
- latest_git: c667a44 stabilize nav2 repeated trial execution

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 19 | 10 | 0.526 | 2.47 | 0.00 | 4.00 |
| tb3-short-east | 10 | 10 | 1.000 | 5.60 | 5.00 | 6.00 |
| tb3-short-north | 6 | 6 | 1.000 | 44.67 | 27.00 | 49.00 |

## Status Counts

- failed_goal_rc_0: 9
- success: 26

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T16:04:20+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-08T16:06:16+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-08T16:08:10+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-08T16:10:05+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-08T16:12:42+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-08T16:15:20+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-08T16:18:57+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-08T16:20:52+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-08T16:22:44+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T16:24:34+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-08T16:26:30+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-08T16:28:25+0900 | tb3-short-east-r3 | success | true | 6 |

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
422037 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
446343 bash ./scripts/run_nav2_trial.sh
446525 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
448832 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
