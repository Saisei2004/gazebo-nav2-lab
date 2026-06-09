# Hourly Nav2 Report

- generated_at: 2026-06-10T00:07:01+09:00
- total_trials: 893
- latest_git: e02eb07 hourly nav2 report 2026-06-09 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 304 | 254 | 0.836 | 3.43 | 0.00 | 5.00 |
| tb3-short-east | 295 | 248 | 0.841 | 4.77 | 1.00 | 7.00 |
| tb3-short-north | 294 | 258 | 0.878 | 40.76 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 133
- success: 760

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T23:39:18+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-09T23:41:56+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T23:45:34+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T23:47:28+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T23:49:21+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T23:51:13+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T23:53:08+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T23:55:04+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T23:56:59+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T23:59:37+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T00:02:14+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-10T00:05:51+0900 | smoke-003-repeat-r1 | success | true | 4 |

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
384549 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
387332 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
