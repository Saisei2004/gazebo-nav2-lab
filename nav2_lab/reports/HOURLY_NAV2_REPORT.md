# Hourly Nav2 Report

- generated_at: 2026-06-09T22:07:01+09:00
- total_trials: 838
- latest_git: 8b50f4a hourly nav2 report 2026-06-09 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 285 | 236 | 0.828 | 3.41 | 0.00 | 5.00 |
| tb3-short-east | 277 | 232 | 0.838 | 4.76 | 1.00 | 7.00 |
| tb3-short-north | 276 | 243 | 0.880 | 40.79 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 127
- success: 711

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T21:39:35+0900 | tb3-short-north-r1 | success | true | 23 |
| 2026-06-09T21:41:47+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T21:44:24+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T21:48:03+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-09T21:49:57+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-09T21:51:50+0900 | smoke-003-repeat-r3 | success | true | 5 |
| 2026-06-09T21:53:44+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T21:55:40+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T21:57:35+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T21:59:31+0900 | tb3-short-north-r1 | success | true | 22 |
| 2026-06-09T22:01:42+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T22:03:32+0900 | tb3-short-north-r3 | success | true | 20 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
122893 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
122906 bash ./scripts/run_nav2_trial.sh
123124 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
124098 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
