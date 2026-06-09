# Hourly Nav2 Report

- generated_at: 2026-06-09T14:07:01+09:00
- total_trials: 620
- latest_git: 50a4d63 hourly nav2 report 2026-06-09 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 213 | 177 | 0.831 | 3.39 | 0.00 | 5.00 |
| tb3-short-east | 205 | 175 | 0.854 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 202 | 183 | 0.906 | 42.05 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 85
- success: 535

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T13:41:46+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T13:43:41+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T13:45:36+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-09T13:48:14+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T13:50:51+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-09T13:54:27+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T13:56:20+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-09T13:58:14+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-09T14:00:06+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T14:02:01+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T14:03:56+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T14:05:54+0900 | tb3-short-north-r1 | success | true | 48 |

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
3246412 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3274614 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
