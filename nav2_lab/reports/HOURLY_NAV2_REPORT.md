# Hourly Nav2 Report

- generated_at: 2026-06-09T08:07:01+09:00
- total_trials: 457
- latest_git: 0a11df6 hourly nav2 report 2026-06-09 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 159 | 130 | 0.818 | 3.35 | 0.00 | 5.00 |
| tb3-short-east | 151 | 129 | 0.854 | 4.85 | 1.00 | 7.00 |
| tb3-short-north | 147 | 133 | 0.905 | 42.01 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 65
- success: 392

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T07:40:51+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T07:42:45+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T07:44:39+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T07:46:34+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T07:49:11+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-09T07:51:48+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T07:55:27+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T07:57:21+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T07:59:14+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-09T08:01:07+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T08:03:01+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T08:04:56+0900 | tb3-short-east-r3 | success | true | 5 |

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
2462523 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2487615 bash ./scripts/run_nav2_trial.sh
2487784 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2488372 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
