# Hourly Nav2 Report

- generated_at: 2026-06-14T03:07:01+09:00
- total_trials: 3577
- latest_git: c3fae9c hourly nav2 report 2026-06-14 02:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 116 | 107 | 0.922 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 116 | 96 | 0.828 | 37.12 | 1.00 | 50.00 |
| baseline-smoke-control | 116 | 100 | 0.862 | 3.48 | 1.00 | 6.00 |
| fast-east | 232 | 194 | 0.836 | 4.81 | 1.00 | 7.00 |
| fast-north | 232 | 198 | 0.853 | 39.05 | 0.00 | 50.00 |
| relaxed-north | 232 | 197 | 0.849 | 35.55 | 1.00 | 50.00 |
| relaxed-smoke | 232 | 203 | 0.875 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 116 | 94 | 0.810 | 40.36 | 0.00 | 121.00 |
| yaw-east-pos | 116 | 101 | 0.871 | 13.86 | 1.00 | 54.00 |
| yaw-north-pos | 116 | 93 | 0.802 | 3.71 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 517
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3045

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T02:40:21+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T02:42:15+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T02:44:52+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T02:46:42+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T02:48:35+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T02:50:25+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T02:53:04+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T02:55:42+0900 | yaw-east-pos-r1 | success | true | 38 |
| 2026-06-14T02:58:09+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-14T03:00:17+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T03:03:11+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T03:05:04+0900 | baseline-east-control-r1 | success | true | 5 |

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
760973 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
769416 bash ./scripts/run_nav2_trial.sh
769470 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
769661 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
