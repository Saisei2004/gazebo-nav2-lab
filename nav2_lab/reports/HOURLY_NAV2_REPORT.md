# Hourly Nav2 Report

- generated_at: 2026-06-09T17:07:02+09:00
- total_trials: 701
- latest_git: 19c8b31 hourly nav2 report 2026-06-09 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 240 | 199 | 0.829 | 3.40 | 0.00 | 5.00 |
| tb3-short-east | 232 | 197 | 0.849 | 4.81 | 1.00 | 7.00 |
| tb3-short-north | 229 | 205 | 0.895 | 41.56 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 100
- success: 601

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T16:39:10+0900 | tb3-short-east-r2 | success | true | 4 |
| 2026-06-09T16:41:04+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T16:42:54+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T16:45:31+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T16:48:09+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T16:51:48+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-09T16:53:43+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-09T16:55:36+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T16:57:31+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T16:59:26+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T17:01:21+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T17:03:16+0900 | tb3-short-north-r1 | success | true | 49 |

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
3631840 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3662919 bash ./scripts/run_nav2_trial.sh
3665806 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
