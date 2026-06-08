# Hourly Nav2 Report

- generated_at: 2026-06-08T19:07:01+09:00
- total_trials: 105
- latest_git: 5d310c8 hourly nav2 report 2026-06-08 18:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 42 | 30 | 0.714 | 3.02 | 0.00 | 5.00 |
| tb3-short-east | 33 | 31 | 0.939 | 5.27 | 1.00 | 7.00 |
| tb3-short-north | 30 | 28 | 0.933 | 42.13 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 16
- success: 89

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T18:42:22+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-08T18:44:15+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-08T18:46:08+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-08T18:48:04+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-08T18:49:59+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-08T18:52:37+0900 | tb3-short-north-r2 | success | true | 10 |
| 2026-06-08T18:54:36+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-08T18:58:14+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-08T19:00:07+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-08T19:01:59+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-08T19:03:53+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-08T19:05:50+0900 | tb3-short-east-r2 | success | true | 6 |

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
760286 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
779683 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
