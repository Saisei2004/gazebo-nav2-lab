# Hourly Nav2 Report

- generated_at: 2026-06-17T09:07:01+09:00
- total_trials: 5684
- latest_git: 5a4ec42 hourly nav2 report 2026-06-17 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 266 | 240 | 0.902 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 267 | 222 | 0.831 | 37.76 | 1.00 | 50.00 |
| baseline-smoke-control | 266 | 226 | 0.850 | 3.42 | 1.00 | 6.00 |
| fast-east | 534 | 465 | 0.871 | 4.91 | 1.00 | 7.00 |
| fast-north | 534 | 467 | 0.875 | 40.05 | 0.00 | 50.00 |
| relaxed-north | 532 | 458 | 0.861 | 35.24 | 1.00 | 51.00 |
| relaxed-smoke | 534 | 475 | 0.890 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 266 | 223 | 0.838 | 41.11 | 0.00 | 121.00 |
| yaw-east-pos | 266 | 234 | 0.880 | 13.70 | 1.00 | 54.00 |
| yaw-north-pos | 266 | 227 | 0.853 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 764
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4899

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T08:40:41+0900 | yaw-east-pos-r1 | success | true | 17 |
| 2026-06-17T08:42:48+0900 | yaw-east-neg-r1 | success | true | 22 |
| 2026-06-17T08:44:59+0900 | yaw-north-pos-r1 | success | true | 6 |
| 2026-06-17T08:47:54+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-17T08:49:47+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T08:51:43+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T08:54:20+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T08:56:15+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-17T08:58:09+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T09:00:47+0900 | fast-north-r2 | success | true | 20 |
| 2026-06-17T09:02:56+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T09:04:49+0900 | relaxed-smoke-r2 | success | true | 4 |

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
2349139 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2390434 bash ./scripts/run_nav2_trial.sh
2390659 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
2391508 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
