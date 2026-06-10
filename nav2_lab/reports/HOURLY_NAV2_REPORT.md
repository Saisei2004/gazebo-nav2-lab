# Hourly Nav2 Report

- generated_at: 2026-06-10T19:07:01+09:00
- total_trials: 1411
- latest_git: c60bde2 hourly nav2 report 2026-06-10 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 477 | 410 | 0.860 | 3.50 | 0.00 | 6.00 |
| tb3-short-east | 469 | 406 | 0.866 | 4.87 | 1.00 | 8.00 |
| tb3-short-north | 465 | 404 | 0.869 | 40.45 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 191
- success: 1220

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T18:42:15+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T18:44:09+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T18:46:04+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T18:47:59+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-10T18:50:36+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T18:53:13+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-10T18:56:52+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T18:58:46+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-10T19:00:38+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T19:02:29+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T19:04:23+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T19:06:13+0900 | tb3-short-east-r3 | success | true | 5 |

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
2850094 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2872554 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
