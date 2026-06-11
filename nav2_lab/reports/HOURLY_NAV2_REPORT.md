# Hourly Nav2 Report

- generated_at: 2026-06-11T14:07:01+09:00
- total_trials: 1928
- latest_git: 4b34183 hourly nav2 report 2026-06-11 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 649 | 553 | 0.852 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 640 | 550 | 0.859 | 4.85 | 1.00 | 8.00 |
| tb3-short-north | 639 | 549 | 0.859 | 40.21 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 276
- success: 1652

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T13:39:34+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T13:42:11+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T13:45:51+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T13:47:42+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-11T13:49:37+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 3 |
| 2026-06-11T13:51:29+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-11T13:53:24+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T13:55:19+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-11T13:57:14+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T13:59:50+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T14:01:41+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T14:05:18+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |

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
1151597 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1155302 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
