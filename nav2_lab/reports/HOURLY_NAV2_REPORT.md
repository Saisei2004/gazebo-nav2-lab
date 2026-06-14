# Hourly Nav2 Report

- generated_at: 2026-06-14T11:07:01+09:00
- total_trials: 3794
- latest_git: 7977a2b hourly nav2 report 2026-06-14 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 131 | 121 | 0.924 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 132 | 110 | 0.833 | 37.76 | 1.00 | 50.00 |
| baseline-smoke-control | 131 | 114 | 0.870 | 3.50 | 1.00 | 6.00 |
| fast-east | 264 | 225 | 0.852 | 4.87 | 1.00 | 7.00 |
| fast-north | 264 | 223 | 0.845 | 38.64 | 0.00 | 50.00 |
| relaxed-north | 262 | 225 | 0.859 | 35.85 | 1.00 | 50.00 |
| relaxed-smoke | 264 | 232 | 0.879 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 131 | 106 | 0.809 | 39.56 | 0.00 | 121.00 |
| yaw-east-pos | 131 | 116 | 0.885 | 13.92 | 1.00 | 54.00 |
| yaw-north-pos | 131 | 107 | 0.817 | 3.76 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 538
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3241

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T10:41:09+0900 | yaw-east-pos-r1 | success | true | 13 |
| 2026-06-14T10:43:13+0900 | yaw-east-neg-r1 | success | true | 23 |
| 2026-06-14T10:45:25+0900 | yaw-north-pos-r1 | success | true | 6 |
| 2026-06-14T10:48:20+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T10:50:11+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T10:52:06+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T10:54:44+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-14T10:56:40+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T10:58:35+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T11:01:12+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T11:03:02+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-14T11:04:54+0900 | relaxed-smoke-r2 | success | true | 3 |

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
1780262 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1820349 bash ./scripts/run_nav2_trial.sh
1820570 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true params_file:=params/goal_tolerance_relaxed.yaml
1821324 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
