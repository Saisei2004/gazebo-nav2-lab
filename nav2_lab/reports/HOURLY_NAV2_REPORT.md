# Hourly Nav2 Report

- generated_at: 2026-06-09T09:07:01+09:00
- total_trials: 484
- latest_git: cef8d45 hourly nav2 report 2026-06-09 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 168 | 139 | 0.827 | 3.38 | 0.00 | 5.00 |
| tb3-short-east | 160 | 136 | 0.850 | 4.83 | 1.00 | 7.00 |
| tb3-short-north | 156 | 142 | 0.910 | 42.12 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 67
- success: 417

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T08:41:05+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T08:42:55+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T08:44:46+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T08:46:41+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T08:49:20+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T08:51:57+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T08:55:35+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T08:57:28+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T08:59:22+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T09:01:17+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T09:03:12+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T09:05:06+0900 | tb3-short-east-r3 | success | true | 5 |

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
2593978 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2619214 bash ./scripts/run_nav2_trial.sh
2619230 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
