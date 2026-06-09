# Hourly Nav2 Report

- generated_at: 2026-06-09T11:07:01+09:00
- total_trials: 538
- latest_git: 6eb1e74 hourly nav2 report 2026-06-09 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 186 | 154 | 0.828 | 3.38 | 0.00 | 5.00 |
| tb3-short-east | 178 | 150 | 0.843 | 4.78 | 1.00 | 7.00 |
| tb3-short-north | 174 | 159 | 0.914 | 42.26 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 75
- success: 463

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T10:40:56+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T10:42:50+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T10:44:44+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T10:46:39+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-09T10:49:18+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T10:51:55+0900 | tb3-short-north-r3 | success | true | 50 |
| 2026-06-09T10:55:33+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-09T10:57:27+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T10:59:20+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T11:01:13+0900 | tb3-short-east-r1 | success | true | 7 |
| 2026-06-09T11:03:09+0900 | tb3-short-east-r2 | success | true | 7 |
| 2026-06-09T11:05:06+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |

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
2856526 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2881471 bash ./scripts/run_nav2_trial.sh
2881512 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2881974 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
