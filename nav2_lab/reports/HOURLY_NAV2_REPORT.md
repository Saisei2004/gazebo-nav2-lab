# Hourly Nav2 Report

- generated_at: 2026-06-14T15:07:01+09:00
- total_trials: 3902
- latest_git: cc4cc5a hourly nav2 report 2026-06-14 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 139 | 129 | 0.928 | 5.19 | 1.00 | 7.00 |
| baseline-north-control | 140 | 118 | 0.843 | 38.37 | 1.00 | 50.00 |
| baseline-smoke-control | 139 | 121 | 0.871 | 3.51 | 1.00 | 6.00 |
| fast-east | 280 | 240 | 0.857 | 4.89 | 1.00 | 7.00 |
| fast-north | 278 | 236 | 0.849 | 38.76 | 0.00 | 50.00 |
| relaxed-north | 278 | 237 | 0.853 | 35.47 | 1.00 | 50.00 |
| relaxed-smoke | 278 | 244 | 0.878 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 139 | 112 | 0.806 | 39.27 | 0.00 | 121.00 |
| yaw-east-pos | 139 | 124 | 0.892 | 13.96 | 1.00 | 54.00 |
| yaw-north-pos | 139 | 114 | 0.820 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 550
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3337

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T14:40:51+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-14T14:42:44+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-14T14:44:37+0900 | relaxed-north-r1 | success | true | 7 |
| 2026-06-14T14:46:33+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T14:48:23+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T14:50:28+0900 | yaw-east-neg-r1 | success | true | 35 |
| 2026-06-14T14:52:53+0900 | yaw-north-pos-r1 | success | true | 6 |
| 2026-06-14T14:55:49+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-14T14:57:43+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T14:59:38+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T15:02:15+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T15:04:10+0900 | fast-east-r2 | success | true | 5 |

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
2323114 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2345815 bash ./scripts/run_nav2_trial.sh
2345858 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2348048 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
