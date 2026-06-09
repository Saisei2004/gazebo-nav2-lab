# Hourly Nav2 Report

- generated_at: 2026-06-10T04:07:01+09:00
- total_trials: 1003
- latest_git: 3780661 hourly nav2 report 2026-06-10 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 342 | 285 | 0.833 | 3.43 | 0.00 | 5.00 |
| tb3-short-east | 331 | 280 | 0.846 | 4.79 | 1.00 | 7.00 |
| tb3-short-north | 330 | 286 | 0.867 | 40.36 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 152
- success: 851

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T03:43:36+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T03:45:28+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T03:47:20+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T03:49:11+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T03:51:01+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T03:52:56+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T03:54:46+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T03:56:39+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T03:59:15+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T04:02:06+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-10T04:03:59+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T04:05:52+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 2 |

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
898928 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
909969 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
