# Hourly Nav2 Report

- generated_at: 2026-06-10T15:07:01+09:00
- total_trials: 1301
- latest_git: 06bd5fa hourly nav2 report 2026-06-10 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 441 | 376 | 0.853 | 3.49 | 0.00 | 5.00 |
| tb3-short-east | 431 | 371 | 0.861 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 429 | 373 | 0.869 | 40.68 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 181
- success: 1120

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T14:42:28+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T14:44:18+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-10T14:46:11+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T14:48:02+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T14:49:57+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T14:51:53+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T14:53:44+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-10T14:56:21+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T14:59:59+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T15:01:52+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T15:03:45+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T15:05:37+0900 | tb3-short-east-r1 | success | true | 5 |

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
2336377 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2350261 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
