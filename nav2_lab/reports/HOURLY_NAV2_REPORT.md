# Hourly Nav2 Report

- generated_at: 2026-06-10T11:07:01+09:00
- total_trials: 1192
- latest_git: 67287b3 hourly nav2 report 2026-06-10 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 405 | 343 | 0.847 | 3.49 | 0.00 | 5.00 |
| tb3-short-east | 394 | 339 | 0.860 | 4.85 | 1.00 | 8.00 |
| tb3-short-north | 393 | 342 | 0.870 | 40.68 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 168
- success: 1024

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T10:41:26+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T10:43:19+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T10:45:12+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T10:47:02+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T10:48:56+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-10T10:50:50+0900 | tb3-short-east-r3 | success | true | 8 |
| 2026-06-10T10:52:48+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-10T10:55:25+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T10:58:03+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T11:01:40+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T11:03:33+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T11:05:26+0900 | smoke-003-repeat-r3 | success | true | 4 |

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
1817672 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1829507 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
