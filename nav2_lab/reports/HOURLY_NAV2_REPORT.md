# Hourly Nav2 Report

- generated_at: 2026-06-08T23:07:01+09:00
- total_trials: 214
- latest_git: 0cb7624 hourly nav2 report 2026-06-08 22:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 78 | 60 | 0.769 | 3.13 | 0.00 | 5.00 |
| tb3-short-east | 70 | 64 | 0.914 | 5.13 | 1.00 | 7.00 |
| tb3-short-north | 66 | 60 | 0.909 | 41.27 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 30
- success: 184

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T22:43:23+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-08T22:45:18+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-08T22:47:14+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-08T22:49:09+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-08T22:51:00+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T22:52:50+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-08T22:56:27+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-08T22:58:21+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-08T23:00:15+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-08T23:02:08+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-08T23:04:02+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-08T23:05:58+0900 | tb3-short-east-r3 | success | true | 5 |

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
1285133 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1308720 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
