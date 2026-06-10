# Hourly Nav2 Report

- generated_at: 2026-06-11T07:07:01+09:00
- total_trials: 1738
- latest_git: d525a97 hourly nav2 report 2026-06-11 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 585 | 502 | 0.858 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 577 | 499 | 0.865 | 4.87 | 1.00 | 8.00 |
| tb3-short-north | 576 | 494 | 0.858 | 40.00 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 243
- success: 1495

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T06:38:32+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T06:40:22+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-11T06:42:59+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T06:46:37+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-11T06:48:30+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-11T06:50:25+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T06:52:19+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-11T06:54:14+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T06:56:08+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T06:58:03+0900 | tb3-short-north-r1 | success | true | 50 |
| 2026-06-11T07:00:44+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T07:03:21+0900 | tb3-short-north-r3 | success | true | 48 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
248937 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
248950 bash ./scripts/run_nav2_trial.sh
249096 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
249105 pgrep -f ros2 launch nav2_bringup tb3_simulation_launch.py
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
