# Hourly Nav2 Report

- generated_at: 2026-06-11T01:07:01+09:00
- total_trials: 1575
- latest_git: fe77c88 hourly nav2 report 2026-06-11 00:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 531 | 458 | 0.863 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 523 | 456 | 0.872 | 4.90 | 1.00 | 8.00 |
| tb3-short-north | 521 | 448 | 0.860 | 40.02 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 213
- success: 1362

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T00:40:18+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T00:42:08+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T00:44:45+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T00:47:22+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T00:50:12+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T00:52:04+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-11T00:53:57+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T00:55:49+0900 | tb3-short-east-r1 | success | true | 7 |
| 2026-06-11T00:57:44+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T00:59:39+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T01:01:33+0900 | tb3-short-north-r1 | success | true | 50 |
| 2026-06-11T01:04:10+0900 | tb3-short-north-r2 | success | true | 48 |

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
3621587 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3657849 bash ./scripts/run_nav2_trial.sh
3657888 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
3658612 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
