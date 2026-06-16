# Hourly Nav2 Report

- generated_at: 2026-06-16T15:07:01+09:00
- total_trials: 5199
- latest_git: 1ec2d50 hourly nav2 report 2026-06-16 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 231 | 208 | 0.900 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 232 | 191 | 0.823 | 37.62 | 1.00 | 50.00 |
| baseline-smoke-control | 231 | 197 | 0.853 | 3.45 | 1.00 | 6.00 |
| fast-east | 464 | 402 | 0.866 | 4.90 | 1.00 | 7.00 |
| fast-north | 464 | 402 | 0.866 | 39.50 | 0.00 | 50.00 |
| relaxed-north | 464 | 395 | 0.851 | 35.25 | 1.00 | 51.00 |
| relaxed-smoke | 464 | 413 | 0.890 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 232 | 193 | 0.832 | 40.84 | 0.00 | 121.00 |
| yaw-east-pos | 232 | 208 | 0.897 | 13.97 | 1.00 | 54.00 |
| yaw-north-pos | 232 | 198 | 0.853 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 711
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4469

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T14:38:36+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-16T14:41:14+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T14:43:08+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T14:45:02+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-16T14:47:39+0900 | fast-north-r2 | success | true | 24 |
| 2026-06-16T14:49:53+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-16T14:51:46+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T14:53:39+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-16T14:56:15+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T14:58:53+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-16T15:00:56+0900 | yaw-east-neg-r1 | success | true | 65 |
| 2026-06-16T15:03:49+0900 | yaw-north-pos-r1 | success | true | 4 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
147814 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
147827 bash ./scripts/run_nav2_trial.sh
148054 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
148988 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
