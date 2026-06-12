# Hourly Nav2 Report

- generated_at: 2026-06-12T19:07:01+09:00
- total_trials: 2706
- latest_git: 388f75c hourly nav2 report 2026-06-12 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 53 | 49 | 0.925 | 5.23 | 1.00 | 7.00 |
| baseline-north-control | 54 | 48 | 0.889 | 39.96 | 1.00 | 50.00 |
| baseline-smoke-control | 53 | 46 | 0.868 | 3.32 | 1.00 | 5.00 |
| fast-east | 108 | 91 | 0.843 | 4.75 | 1.00 | 7.00 |
| fast-north | 108 | 95 | 0.880 | 40.56 | 0.00 | 50.00 |
| relaxed-north | 108 | 91 | 0.843 | 36.72 | 1.00 | 50.00 |
| relaxed-smoke | 108 | 95 | 0.880 | 3.41 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 54 | 42 | 0.778 | 42.87 | 0.00 | 121.00 |
| yaw-east-pos | 54 | 46 | 0.852 | 13.13 | 1.00 | 29.00 |
| yaw-north-pos | 53 | 42 | 0.792 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 387
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2307

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T18:40:29+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T18:42:24+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T18:45:01+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T18:46:57+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T18:48:53+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T18:51:31+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T18:54:09+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T18:56:02+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-12T18:57:56+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-12T19:00:33+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 3 |
| 2026-06-12T19:02:23+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T19:04:28+0900 | yaw-east-neg-r1 | success | true | 25 |

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
696706 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
758368 bash ./scripts/run_nav2_trial.sh
758408 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
759355 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
