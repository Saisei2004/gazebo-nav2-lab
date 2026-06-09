# Hourly Nav2 Report

- generated_at: 2026-06-09T15:07:01+09:00
- total_trials: 646
- latest_git: e7651e3 hourly nav2 report 2026-06-09 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 222 | 184 | 0.829 | 3.39 | 0.00 | 5.00 |
| tb3-short-east | 214 | 182 | 0.850 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 210 | 191 | 0.910 | 42.15 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 89
- success: 557

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T14:39:59+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T14:41:53+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T14:43:45+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T14:45:42+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T14:48:18+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-09T14:50:56+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T14:54:36+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-09T14:56:29+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-09T14:58:24+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T15:00:16+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T15:02:11+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T15:04:05+0900 | tb3-short-east-r3 | success | true | 7 |

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
3377987 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3403363 bash ./scripts/run_nav2_trial.sh
3403432 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
3405841 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
