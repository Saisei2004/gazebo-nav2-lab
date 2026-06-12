# Hourly Nav2 Report

- generated_at: 2026-06-13T05:07:01+09:00
- total_trials: 2978
- latest_git: fb720b2 hourly nav2 report 2026-06-13 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 73 | 67 | 0.918 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 74 | 62 | 0.838 | 36.97 | 1.00 | 50.00 |
| baseline-smoke-control | 73 | 64 | 0.877 | 3.42 | 1.00 | 6.00 |
| fast-east | 148 | 125 | 0.845 | 4.80 | 1.00 | 7.00 |
| fast-north | 146 | 129 | 0.884 | 40.52 | 0.00 | 50.00 |
| relaxed-north | 146 | 122 | 0.836 | 35.63 | 1.00 | 50.00 |
| relaxed-smoke | 146 | 130 | 0.890 | 3.38 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 73 | 58 | 0.795 | 42.96 | 0.00 | 121.00 |
| yaw-east-pos | 73 | 62 | 0.849 | 13.56 | 1.00 | 54.00 |
| yaw-north-pos | 73 | 58 | 0.795 | 3.68 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 426
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2539

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T04:40:50+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T04:42:42+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T04:44:36+0900 | relaxed-north-r1 | success | true | 20 |
| 2026-06-13T04:46:45+0900 | relaxed-north-r2 | success | true | 18 |
| 2026-06-13T04:48:54+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T04:50:59+0900 | yaw-east-neg-r1 | success | true | 22 |
| 2026-06-13T04:53:12+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-13T04:56:06+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T04:57:59+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T04:59:49+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-13T05:02:27+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-13T05:04:23+0900 | fast-east-r2 | success | true | 5 |

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
2049259 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2071757 bash ./scripts/run_nav2_trial.sh
2071798 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/fast_controller.yaml
2073805 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
