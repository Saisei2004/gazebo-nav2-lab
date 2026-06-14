# Hourly Nav2 Report

- generated_at: 2026-06-14T14:07:01+09:00
- total_trials: 3875
- latest_git: 601cc91 hourly nav2 report 2026-06-14 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 137 | 127 | 0.927 | 5.19 | 1.00 | 7.00 |
| baseline-north-control | 138 | 116 | 0.841 | 38.23 | 1.00 | 50.00 |
| baseline-smoke-control | 137 | 119 | 0.869 | 3.50 | 1.00 | 6.00 |
| fast-east | 276 | 236 | 0.855 | 4.88 | 1.00 | 7.00 |
| fast-north | 275 | 233 | 0.847 | 38.67 | 0.00 | 50.00 |
| relaxed-north | 274 | 234 | 0.854 | 35.61 | 1.00 | 50.00 |
| relaxed-smoke | 274 | 240 | 0.876 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 137 | 111 | 0.810 | 39.58 | 0.00 | 121.00 |
| yaw-east-pos | 137 | 122 | 0.891 | 13.95 | 1.00 | 54.00 |
| yaw-north-pos | 137 | 112 | 0.818 | 3.78 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 548
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3312

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T13:40:10+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-14T13:42:04+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-14T13:44:43+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T13:47:19+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T13:49:23+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T13:51:13+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T13:54:05+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T13:55:55+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T13:57:50+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-14T14:00:26+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-14T14:02:23+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T14:04:18+0900 | fast-north-r1 | success | true | 48 |

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
2187493 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2215886 bash ./scripts/run_nav2_trial.sh
2216048 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2216321 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
