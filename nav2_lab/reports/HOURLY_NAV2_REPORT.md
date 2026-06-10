# Hourly Nav2 Report

- generated_at: 2026-06-11T02:07:01+09:00
- total_trials: 1603
- latest_git: de8a199 hourly nav2 report 2026-06-11 01:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 540 | 464 | 0.859 | 3.51 | 0.00 | 6.00 |
| tb3-short-east | 532 | 463 | 0.870 | 4.89 | 1.00 | 8.00 |
| tb3-short-north | 531 | 456 | 0.859 | 39.94 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 220
- success: 1383

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T01:41:09+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 3 |
| 2026-06-11T01:43:00+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T01:45:37+0900 | tb3-short-north-r3 | success | true | 19 |
| 2026-06-11T01:48:46+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T01:50:35+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-11T01:52:28+0900 | smoke-003-repeat-r3 | success | true | 5 |
| 2026-06-11T01:54:22+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-11T01:56:16+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-11T01:58:11+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-11T02:00:06+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-11T02:02:43+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T02:05:21+0900 | tb3-short-north-r3 | success | true | 48 |

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
3748475 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3788662 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
