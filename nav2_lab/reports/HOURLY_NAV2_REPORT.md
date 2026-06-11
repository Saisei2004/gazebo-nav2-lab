# Hourly Nav2 Report

- generated_at: 2026-06-11T23:07:01+09:00
- total_trials: 2167
- latest_git: 08f27fd hourly nav2 report 2026-06-11 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 15 | 15 | 1.000 | 5.47 | 5.00 | 7.00 |
| baseline-north-control | 16 | 15 | 0.938 | 41.56 | 3.00 | 50.00 |
| baseline-smoke-control | 15 | 13 | 0.867 | 3.33 | 1.00 | 4.00 |
| fast-east | 32 | 25 | 0.781 | 4.47 | 1.00 | 7.00 |
| fast-north | 31 | 25 | 0.806 | 37.97 | 0.00 | 50.00 |
| relaxed-north | 30 | 27 | 0.900 | 36.50 | 1.00 | 49.00 |
| relaxed-smoke | 30 | 26 | 0.867 | 3.50 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 15 | 14 | 0.933 | 50.00 | 1.00 | 115.00 |
| yaw-east-pos | 15 | 12 | 0.800 | 12.53 | 1.00 | 21.00 |
| yaw-north-pos | 15 | 14 | 0.933 | 4.00 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 309
- runner_failed: 10
- success: 1848

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T22:40:16+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-11T22:42:09+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-11T22:44:46+0900 | relaxed-north-r2 | success | true | 8 |
| 2026-06-11T22:46:44+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-11T22:48:48+0900 | yaw-east-neg-r1 | success | true | 20 |
| 2026-06-11T22:50:57+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-11T22:53:50+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-11T22:55:43+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-11T22:57:38+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-11T23:00:15+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T23:02:09+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T23:03:59+0900 | fast-north-r1 | success | true | 48 |

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
2302907 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2330632 bash ./scripts/run_nav2_trial.sh
2330787 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2331829 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
