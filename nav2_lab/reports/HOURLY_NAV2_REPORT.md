# Hourly Nav2 Report

- generated_at: 2026-06-10T03:07:01+09:00
- total_trials: 975
- latest_git: 0091c68 hourly nav2 report 2026-06-10 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 332 | 278 | 0.837 | 3.44 | 0.00 | 5.00 |
| tb3-short-east | 322 | 275 | 0.854 | 4.83 | 1.00 | 7.00 |
| tb3-short-north | 321 | 279 | 0.869 | 40.43 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 143
- success: 832

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T02:40:59+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-10T02:44:39+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T02:46:31+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T02:48:24+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T02:50:13+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T02:52:08+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T02:54:02+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-10T02:55:57+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-10T02:57:48+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-10T03:00:24+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T03:03:13+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-10T03:05:06+0900 | smoke-003-repeat-r2 | success | true | 4 |

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
771420 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
779750 bash ./scripts/run_nav2_trial.sh
779787 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
