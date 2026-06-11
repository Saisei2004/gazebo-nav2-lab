# Hourly Nav2 Report

- generated_at: 2026-06-12T05:07:01+09:00
- total_trials: 2327
- latest_git: 8d8b487 hourly nav2 report 2026-06-12 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 26 | 25 | 0.962 | 5.38 | 2.00 | 7.00 |
| baseline-north-control | 27 | 25 | 0.926 | 42.52 | 2.00 | 50.00 |
| baseline-smoke-control | 26 | 24 | 0.923 | 3.38 | 1.00 | 4.00 |
| fast-east | 54 | 45 | 0.833 | 4.70 | 1.00 | 7.00 |
| fast-north | 54 | 47 | 0.870 | 40.30 | 0.00 | 50.00 |
| relaxed-north | 54 | 46 | 0.852 | 37.31 | 1.00 | 50.00 |
| relaxed-smoke | 54 | 46 | 0.852 | 3.33 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 26 | 24 | 0.923 | 48.46 | 1.00 | 121.00 |
| yaw-east-pos | 27 | 24 | 0.889 | 13.85 | 1.00 | 29.00 |
| yaw-north-pos | 26 | 25 | 0.962 | 4.15 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 323
- failed_goal_timeout: 1
- runner_failed: 10
- success: 1993

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T04:40:33+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T04:42:26+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T04:44:22+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T04:46:12+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T04:48:07+0900 | fast-east-r2 | success | true | 7 |
| 2026-06-12T04:50:04+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-12T04:52:44+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-12T04:55:22+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T04:57:15+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-12T04:59:08+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-12T05:01:47+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T05:04:24+0900 | yaw-east-pos-r1 | success | true | 14 |

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
3062354 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3119659 bash ./scripts/run_nav2_trial.sh
3119773 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
3121158 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
