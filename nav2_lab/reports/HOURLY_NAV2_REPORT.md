# Hourly Nav2 Report

- generated_at: 2026-06-08T21:07:01+09:00
- total_trials: 159
- latest_git: c23b8b9 hourly nav2 report 2026-06-08 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 60 | 45 | 0.750 | 3.12 | 0.00 | 5.00 |
| tb3-short-east | 51 | 47 | 0.922 | 5.20 | 1.00 | 7.00 |
| tb3-short-north | 48 | 45 | 0.938 | 41.62 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 22
- success: 137

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T20:41:39+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T20:43:29+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-08T20:45:21+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-08T20:47:16+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-08T20:49:11+0900 | tb3-short-north-r1 | success | true | 13 |
| 2026-06-08T20:51:13+0900 | tb3-short-north-r2 | success | true | 50 |
| 2026-06-08T20:53:50+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-08T20:57:29+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-08T20:59:22+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-08T21:01:15+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-08T21:03:07+0900 | tb3-short-east-r1 | success | true | 7 |
| 2026-06-08T21:05:03+0900 | tb3-short-east-r2 | success | true | 5 |

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
1025936 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1046714 bash ./scripts/run_nav2_trial.sh
1046929 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
1047072 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
