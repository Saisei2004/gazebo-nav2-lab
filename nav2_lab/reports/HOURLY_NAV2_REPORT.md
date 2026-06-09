# Hourly Nav2 Report

- generated_at: 2026-06-10T07:07:01+09:00
- total_trials: 1084
- latest_git: 3c5db06 hourly nav2 report 2026-06-10 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 369 | 309 | 0.837 | 3.46 | 0.00 | 5.00 |
| tb3-short-east | 358 | 306 | 0.855 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 357 | 310 | 0.868 | 40.57 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 159
- success: 925

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T06:42:47+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T06:44:41+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T06:46:37+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-10T06:48:30+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T06:50:25+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-10T06:52:19+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T06:54:15+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-10T06:56:52+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T06:59:29+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T07:02:20+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T07:04:13+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T07:06:07+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |

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
1292507 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1302978 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
