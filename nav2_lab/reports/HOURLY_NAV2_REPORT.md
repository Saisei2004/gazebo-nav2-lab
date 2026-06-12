# Hourly Nav2 Report

- generated_at: 2026-06-13T07:07:02+09:00
- total_trials: 3032
- latest_git: ff552d6 hourly nav2 report 2026-06-13 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 77 | 71 | 0.922 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 78 | 65 | 0.833 | 36.92 | 1.00 | 50.00 |
| baseline-smoke-control | 77 | 68 | 0.883 | 3.42 | 1.00 | 6.00 |
| fast-east | 154 | 131 | 0.851 | 4.83 | 1.00 | 7.00 |
| fast-north | 154 | 136 | 0.883 | 40.61 | 0.00 | 50.00 |
| relaxed-north | 154 | 130 | 0.844 | 35.58 | 1.00 | 50.00 |
| relaxed-smoke | 154 | 137 | 0.890 | 3.36 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 77 | 62 | 0.805 | 43.01 | 0.00 | 121.00 |
| yaw-east-pos | 77 | 65 | 0.844 | 13.45 | 1.00 | 54.00 |
| yaw-north-pos | 77 | 61 | 0.792 | 3.68 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 431
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2588

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T06:40:40+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-13T06:43:18+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T06:45:10+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T06:47:02+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T06:48:54+0900 | relaxed-north-r1 | success | true | 10 |
| 2026-06-13T06:50:53+0900 | relaxed-north-r2 | success | true | 9 |
| 2026-06-13T06:52:51+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T06:54:42+0900 | yaw-east-neg-r1 | success | true | 108 |
| 2026-06-13T06:58:20+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T07:01:10+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T07:03:05+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T07:05:00+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |

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
2324065 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2336445 bash ./scripts/run_nav2_trial.sh
2336489 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2337205 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
