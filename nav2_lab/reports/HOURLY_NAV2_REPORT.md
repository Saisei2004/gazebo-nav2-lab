# Hourly Nav2 Report

- generated_at: 2026-06-11T09:07:01+09:00
- total_trials: 1792
- latest_git: c8bb742 hourly nav2 report 2026-06-11 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 603 | 517 | 0.857 | 3.53 | 0.00 | 6.00 |
| tb3-short-east | 595 | 515 | 0.866 | 4.87 | 1.00 | 8.00 |
| tb3-short-north | 594 | 510 | 0.859 | 40.09 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 250
- success: 1542

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T08:38:30+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T08:41:06+0900 | tb3-short-north-r2 | success | true | 50 |
| 2026-06-11T08:43:45+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T08:47:22+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-11T08:49:14+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-11T08:51:09+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-11T08:53:02+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-11T08:54:56+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-11T08:56:50+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T08:58:45+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T09:01:25+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T09:03:15+0900 | tb3-short-north-r3 | success | true | 50 |

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
511575 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
511588 bash ./scripts/run_nav2_trial.sh
511802 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
512107 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
