# Hourly Nav2 Report

- generated_at: 2026-06-11T11:07:01+09:00
- total_trials: 1847
- latest_git: 672e311 hourly nav2 report 2026-06-11 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 622 | 532 | 0.855 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 613 | 529 | 0.863 | 4.86 | 1.00 | 8.00 |
| tb3-short-north | 612 | 525 | 0.858 | 40.10 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 261
- success: 1586

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T10:39:25+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T10:42:03+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-11T10:45:40+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-11T10:47:34+0900 | smoke-003-repeat-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T10:49:24+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T10:51:16+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T10:53:07+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T10:55:02+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T10:56:56+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-11T10:59:35+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T11:02:12+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-11T11:05:49+0900 | smoke-003-repeat-r1 | success | true | 3 |

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
762750 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
765474 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
