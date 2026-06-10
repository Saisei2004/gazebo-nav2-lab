# Hourly Nav2 Report

- generated_at: 2026-06-10T20:07:02+09:00
- total_trials: 1437
- latest_git: 388af3a hourly nav2 report 2026-06-10 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 486 | 418 | 0.860 | 3.50 | 0.00 | 6.00 |
| tb3-short-east | 477 | 413 | 0.866 | 4.87 | 1.00 | 8.00 |
| tb3-short-north | 474 | 413 | 0.871 | 40.60 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 193
- success: 1244

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T19:41:10+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T19:43:02+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T19:44:56+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T19:46:52+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T19:48:47+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-10T19:51:24+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-10T19:54:02+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T19:57:39+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T19:59:29+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-10T20:01:22+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T20:03:14+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T20:05:05+0900 | tb3-short-east-r2 | success | true | 5 |

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
2983254 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3003374 bash ./scripts/run_nav2_trial.sh
3003592 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
