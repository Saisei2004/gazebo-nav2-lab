# Hourly Nav2 Report

- generated_at: 2026-06-09T00:07:01+09:00
- total_trials: 241
- latest_git: 79b951f hourly nav2 report 2026-06-08 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 87 | 67 | 0.770 | 3.16 | 0.00 | 5.00 |
| tb3-short-east | 79 | 71 | 0.899 | 5.08 | 1.00 | 7.00 |
| tb3-short-north | 75 | 68 | 0.907 | 41.48 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 35
- success: 206

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T23:42:44+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-08T23:44:38+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-08T23:46:33+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T23:48:23+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-08T23:50:14+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-08T23:52:51+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-08T23:56:30+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-08T23:58:23+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T00:00:14+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T00:02:07+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T00:04:02+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T00:05:51+0900 | tb3-short-east-r3 | success | true | 6 |

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
1417022 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1440513 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
