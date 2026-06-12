# Hourly Nav2 Report

- generated_at: 2026-06-13T08:07:01+09:00
- total_trials: 3059
- latest_git: 1f29e7a hourly nav2 report 2026-06-13 07:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 79 | 73 | 0.924 | 5.23 | 1.00 | 7.00 |
| baseline-north-control | 79 | 66 | 0.835 | 37.06 | 1.00 | 50.00 |
| baseline-smoke-control | 79 | 70 | 0.886 | 3.43 | 1.00 | 6.00 |
| fast-east | 158 | 135 | 0.854 | 4.85 | 1.00 | 7.00 |
| fast-north | 158 | 139 | 0.880 | 40.27 | 0.00 | 50.00 |
| relaxed-north | 158 | 133 | 0.842 | 35.60 | 1.00 | 50.00 |
| relaxed-smoke | 158 | 141 | 0.892 | 3.38 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 79 | 62 | 0.785 | 43.47 | 0.00 | 121.00 |
| yaw-east-pos | 79 | 67 | 0.848 | 13.48 | 1.00 | 54.00 |
| yaw-north-pos | 79 | 62 | 0.785 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 435
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2610

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T07:42:04+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-13T07:43:58+0900 | fast-north-r1 | success | true | 11 |
| 2026-06-13T07:45:59+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T07:47:49+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T07:49:41+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-13T07:51:37+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T07:53:27+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T07:56:04+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T07:58:09+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T08:00:00+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T08:02:53+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T08:04:45+0900 | baseline-east-control-r1 | success | true | 6 |

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
2459009 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2467274 bash ./scripts/run_nav2_trial.sh
2467505 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2468485 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
