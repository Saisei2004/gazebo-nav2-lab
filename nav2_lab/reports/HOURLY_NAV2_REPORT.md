# Hourly Nav2 Report

- generated_at: 2026-06-12T14:07:01+09:00
- total_trials: 2570
- latest_git: aafa80b hourly nav2 report 2026-06-12 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 44 | 40 | 0.909 | 5.16 | 1.00 | 7.00 |
| baseline-north-control | 45 | 40 | 0.889 | 40.04 | 1.00 | 50.00 |
| baseline-smoke-control | 44 | 38 | 0.864 | 3.23 | 1.00 | 5.00 |
| fast-east | 88 | 72 | 0.818 | 4.66 | 1.00 | 7.00 |
| fast-north | 88 | 76 | 0.864 | 39.75 | 0.00 | 50.00 |
| relaxed-north | 88 | 76 | 0.864 | 37.89 | 1.00 | 50.00 |
| relaxed-smoke | 88 | 76 | 0.864 | 3.42 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 44 | 34 | 0.773 | 46.05 | 0.00 | 121.00 |
| yaw-east-pos | 44 | 38 | 0.864 | 13.34 | 1.00 | 29.00 |
| yaw-north-pos | 44 | 36 | 0.818 | 3.77 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 370
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2188

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T13:37:29+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-12T13:40:07+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-12T13:42:44+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T13:44:35+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-12T13:46:28+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-12T13:49:05+0900 | relaxed-north-r2 | success | true | 50 |
| 2026-06-12T13:51:44+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T13:53:47+0900 | yaw-east-neg-r1 | success | true | 113 |
| 2026-06-12T13:57:29+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-12T14:00:25+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T14:02:17+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T14:04:13+0900 | baseline-north-control-r1 | success | true | 49 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
92926 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
107019 bash ./scripts/run_nav2_trial.sh
107183 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
107687 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
