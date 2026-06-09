# Hourly Nav2 Report

- generated_at: 2026-06-10T05:07:02+09:00
- total_trials: 1030
- latest_git: 28a75de hourly nav2 report 2026-06-10 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 351 | 293 | 0.835 | 3.44 | 0.00 | 5.00 |
| tb3-short-east | 340 | 288 | 0.847 | 4.80 | 1.00 | 7.00 |
| tb3-short-north | 339 | 295 | 0.870 | 40.57 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 154
- success: 876

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T04:42:37+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T04:44:30+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T04:46:25+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T04:48:18+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T04:50:12+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T04:52:02+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T04:53:59+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-10T04:56:36+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T04:59:14+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T05:02:51+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T05:04:43+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T05:06:36+0900 | smoke-003-repeat-r3 | success | true | 4 |

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
1032321 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1042049 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
