# Hourly Nav2 Report

- generated_at: 2026-06-09T03:07:01+09:00
- total_trials: 322
- latest_git: 9e4a395 hourly nav2 report 2026-06-09 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 114 | 93 | 0.816 | 3.32 | 0.00 | 5.00 |
| tb3-short-east | 106 | 94 | 0.887 | 5.05 | 1.00 | 7.00 |
| tb3-short-north | 102 | 93 | 0.912 | 41.73 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 42
- success: 280

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T02:41:38+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T02:43:33+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T02:45:29+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T02:47:20+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T02:49:56+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T02:52:34+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T02:56:11+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-09T02:58:04+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-09T02:59:58+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T03:01:51+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T03:03:44+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T03:05:40+0900 | tb3-short-east-r3 | success | true | 5 |

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
1809487 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1833538 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
