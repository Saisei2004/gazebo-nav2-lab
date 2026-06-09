# Hourly Nav2 Report

- generated_at: 2026-06-09T18:07:01+09:00
- total_trials: 729
- latest_git: 2b6c85b hourly nav2 report 2026-06-09 17:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 249 | 205 | 0.823 | 3.39 | 0.00 | 5.00 |
| tb3-short-east | 241 | 205 | 0.851 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 239 | 212 | 0.887 | 41.26 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 107
- success: 622

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T17:40:21+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T17:42:14+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T17:44:52+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T17:47:28+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-09T17:51:05+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-09T17:52:58+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T17:54:50+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-09T17:56:44+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T17:58:34+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T18:00:28+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T18:02:24+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-09T18:05:01+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 3 |

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
3760034 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3794012 bash ./scripts/run_nav2_trial.sh
3794052 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-1.0 on_exit_shutdown:=true
3794591 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
