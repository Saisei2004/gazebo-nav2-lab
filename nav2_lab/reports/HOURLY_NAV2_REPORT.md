# Hourly Nav2 Report

- generated_at: 2026-06-09T10:07:01+09:00
- total_trials: 511
- latest_git: 45263b5 hourly nav2 report 2026-06-09 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 177 | 146 | 0.825 | 3.36 | 0.00 | 5.00 |
| tb3-short-east | 169 | 143 | 0.846 | 4.80 | 1.00 | 7.00 |
| tb3-short-north | 165 | 150 | 0.909 | 42.16 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 72
- success: 439

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T09:40:55+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T09:42:50+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T09:44:44+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T09:46:39+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T09:49:16+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T09:51:53+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T09:55:32+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-09T09:57:25+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T09:59:18+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T10:01:11+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T10:03:05+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T10:04:55+0900 | tb3-short-east-r3 | success | true | 6 |

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
2724749 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2749570 bash ./scripts/run_nav2_trial.sh
2749613 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2750314 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
