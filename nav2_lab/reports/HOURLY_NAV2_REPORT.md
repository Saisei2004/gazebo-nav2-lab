# Hourly Nav2 Report

- generated_at: 2026-06-13T20:07:01+09:00
- total_trials: 3385
- latest_git: 8146294 hourly nav2 report 2026-06-13 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 102 | 94 | 0.922 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 103 | 85 | 0.825 | 36.99 | 1.00 | 50.00 |
| baseline-smoke-control | 102 | 88 | 0.863 | 3.46 | 1.00 | 6.00 |
| fast-east | 206 | 173 | 0.840 | 4.81 | 1.00 | 7.00 |
| fast-north | 205 | 178 | 0.868 | 39.80 | 0.00 | 50.00 |
| relaxed-north | 204 | 171 | 0.838 | 35.77 | 1.00 | 50.00 |
| relaxed-smoke | 204 | 179 | 0.877 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 102 | 84 | 0.824 | 41.58 | 0.00 | 121.00 |
| yaw-east-pos | 102 | 89 | 0.873 | 13.74 | 1.00 | 54.00 |
| yaw-north-pos | 102 | 80 | 0.784 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 488
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2883

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T19:39:13+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-13T19:41:06+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-13T19:43:44+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-13T19:46:23+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-13T19:48:28+0900 | yaw-east-neg-r1 | success | true | 17 |
| 2026-06-13T19:50:34+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-13T19:53:28+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-13T19:55:21+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T19:57:16+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-13T19:59:55+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T20:01:49+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T20:03:43+0900 | fast-north-r1 | success | true | 47 |

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
4013677 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4041949 bash ./scripts/run_nav2_trial.sh
4042171 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
4043765 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
