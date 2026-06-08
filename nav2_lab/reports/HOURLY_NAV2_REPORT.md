# Hourly Nav2 Report

- generated_at: 2026-06-09T07:07:01+09:00
- total_trials: 430
- latest_git: 596f121 hourly nav2 report 2026-06-09 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 150 | 123 | 0.820 | 3.35 | 0.00 | 5.00 |
| tb3-short-east | 142 | 121 | 0.852 | 4.85 | 1.00 | 7.00 |
| tb3-short-north | 138 | 124 | 0.899 | 41.64 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 62
- success: 368

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T06:41:00+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T06:42:54+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T06:44:48+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T06:46:44+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T06:49:22+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T06:51:14+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T06:54:51+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T06:56:44+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T06:58:35+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-09T07:00:28+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T07:02:22+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T07:04:17+0900 | tb3-short-east-r3 | success | true | 5 |

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
2329840 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2354800 bash ./scripts/run_nav2_trial.sh
2354839 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2356859 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
