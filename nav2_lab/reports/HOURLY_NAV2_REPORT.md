# Hourly Nav2 Report

- generated_at: 2026-06-10T10:07:01+09:00
- total_trials: 1165
- latest_git: eb144c5 hourly nav2 report 2026-06-10 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 396 | 335 | 0.846 | 3.48 | 0.00 | 5.00 |
| tb3-short-east | 385 | 330 | 0.857 | 4.83 | 1.00 | 7.00 |
| tb3-short-north | 384 | 334 | 0.870 | 40.63 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 166
- success: 999

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T09:41:20+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T09:43:14+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T09:45:08+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-10T09:47:02+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T09:48:52+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T09:50:48+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T09:52:42+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-10T09:55:22+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T09:58:00+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T10:01:38+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T10:03:30+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T10:05:25+0900 | smoke-003-repeat-r3 | success | true | 4 |

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
1686536 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1698472 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
