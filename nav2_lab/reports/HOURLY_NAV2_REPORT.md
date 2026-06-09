# Hourly Nav2 Report

- generated_at: 2026-06-10T06:07:01+09:00
- total_trials: 1056
- latest_git: 3372691 hourly nav2 report 2026-06-10 05:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 359 | 301 | 0.838 | 3.46 | 0.00 | 5.00 |
| tb3-short-east | 349 | 297 | 0.851 | 4.81 | 1.00 | 7.00 |
| tb3-short-north | 348 | 303 | 0.871 | 40.64 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 155
- success: 901

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T05:39:48+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T05:42:40+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-10T05:44:33+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T05:46:26+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-10T05:48:19+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T05:50:15+0900 | tb3-short-east-r2 | success | true | 7 |
| 2026-06-10T05:52:09+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T05:54:04+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-10T05:56:42+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T05:59:20+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T06:02:58+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T06:04:52+0900 | smoke-003-repeat-r2 | success | true | 5 |

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
1163121 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1171383 bash ./scripts/run_nav2_trial.sh
1171607 /usr/bin/python3 /opt/ros/jazzy/bin/ros2 launch nav2_bringup tb3_simulation_launch.py headless:=True use_rviz:=False slam:=False map:=/opt/ros/jazzy/share/nav2_bringup/maps/tb3_sandbox.yaml world:=/opt/ros/jazzy/share/nav2_minimal_tb3_sim/worlds/tb3_sandbox.sdf.xacro x_pose:=-2.0 y_pose:=-0.5 on_exit_shutdown:=true
1172380 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
