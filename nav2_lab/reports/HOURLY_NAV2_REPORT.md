# Hourly Nav2 Report

- generated_at: 2026-06-10T23:07:01+09:00
- total_trials: 1519
- latest_git: fcc6b48 hourly nav2 report 2026-06-10 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 513 | 443 | 0.864 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 505 | 440 | 0.871 | 4.90 | 1.00 | 8.00 |
| tb3-short-north | 501 | 434 | 0.866 | 40.38 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 202
- success: 1317

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T22:39:59+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T22:41:54+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T22:43:49+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T22:45:44+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-10T22:48:21+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T22:50:58+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T22:54:36+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T22:56:29+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-10T22:58:23+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T23:00:16+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T23:02:11+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-10T23:04:07+0900 | tb3-short-east-r3 | success | true | 6 |

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
3368324 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3393802 bash ./scripts/run_nav2_trial.sh
3393841 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
3396255 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
