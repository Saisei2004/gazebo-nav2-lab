# Hourly Nav2 Report

- generated_at: 2026-06-13T12:07:01+09:00
- total_trials: 3168
- latest_git: 0536d50 hourly nav2 report 2026-06-13 11:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 86 | 80 | 0.930 | 5.27 | 1.00 | 7.00 |
| baseline-north-control | 87 | 72 | 0.828 | 37.02 | 1.00 | 50.00 |
| baseline-smoke-control | 86 | 76 | 0.884 | 3.44 | 1.00 | 6.00 |
| fast-east | 174 | 146 | 0.839 | 4.78 | 1.00 | 7.00 |
| fast-north | 174 | 152 | 0.874 | 39.77 | 0.00 | 50.00 |
| relaxed-north | 174 | 146 | 0.839 | 35.72 | 1.00 | 50.00 |
| relaxed-smoke | 174 | 152 | 0.874 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 87 | 70 | 0.805 | 42.92 | 0.00 | 121.00 |
| yaw-east-pos | 87 | 74 | 0.851 | 13.47 | 1.00 | 54.00 |
| yaw-north-pos | 86 | 68 | 0.791 | 3.67 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 456
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2698

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T11:40:56+0900 | baseline-east-control-r1 | success | true | 7 |
| 2026-06-13T11:42:53+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T11:44:44+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T11:46:38+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T11:48:28+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-13T11:51:06+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T11:52:56+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T11:54:46+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T11:56:38+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T11:58:28+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T12:01:06+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T12:03:11+0900 | yaw-east-neg-r1 | success | true | 105 |

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
2930452 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2990799 bash ./scripts/run_nav2_trial.sh
2990840 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
2991788 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
