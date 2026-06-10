# Hourly Nav2 Report

- generated_at: 2026-06-10T17:07:01+09:00
- total_trials: 1357
- latest_git: beec799 hourly nav2 report 2026-06-10 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 459 | 394 | 0.858 | 3.50 | 0.00 | 6.00 |
| tb3-short-east | 451 | 389 | 0.863 | 4.85 | 1.00 | 8.00 |
| tb3-short-north | 447 | 387 | 0.866 | 40.24 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 187
- success: 1170

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T16:42:57+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T16:44:51+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-10T16:46:45+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T16:48:39+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T16:50:29+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T16:53:07+0900 | tb3-short-north-r3 | success | true | 11 |
| 2026-06-10T16:56:07+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-10T16:58:01+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-10T16:59:54+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T17:01:48+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-10T17:03:42+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T17:05:31+0900 | tb3-short-east-r3 | success | true | 5 |

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
2585215 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2609345 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
