# Hourly Nav2 Report

- generated_at: 2026-06-10T14:07:01+09:00
- total_trials: 1274
- latest_git: fd18cc3 hourly nav2 report 2026-06-10 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 432 | 369 | 0.854 | 3.49 | 0.00 | 5.00 |
| tb3-short-east | 422 | 364 | 0.863 | 4.86 | 1.00 | 8.00 |
| tb3-short-north | 420 | 366 | 0.871 | 40.73 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 175
- success: 1099

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T13:42:27+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-10T13:44:20+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T13:46:13+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T13:48:08+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-10T13:50:03+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T13:51:58+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-10T13:54:35+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-10T13:57:12+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-10T14:00:49+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T14:02:44+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T14:04:38+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T14:06:31+0900 | tb3-short-east-r1 | success | true | 5 |

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
2208844 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2222929 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
