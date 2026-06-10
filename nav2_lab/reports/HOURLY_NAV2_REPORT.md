# Hourly Nav2 Report

- generated_at: 2026-06-10T12:07:01+09:00
- total_trials: 1220
- latest_git: 57cbd4e hourly nav2 report 2026-06-10 11:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 414 | 351 | 0.848 | 3.49 | 0.00 | 5.00 |
| tb3-short-east | 404 | 349 | 0.864 | 4.86 | 1.00 | 8.00 |
| tb3-short-north | 402 | 349 | 0.868 | 40.51 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 171
- success: 1049

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T11:43:17+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T11:45:10+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T11:47:03+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T11:48:57+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T11:50:53+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T11:52:48+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T11:54:37+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-10T11:57:15+0900 | tb3-short-north-r3 | success | true | 10 |
| 2026-06-10T12:00:13+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-10T12:02:06+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T12:03:56+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T12:05:50+0900 | tb3-short-east-r1 | success | true | 6 |

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
1945836 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1960910 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
