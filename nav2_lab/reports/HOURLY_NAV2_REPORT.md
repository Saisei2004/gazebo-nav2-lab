# Hourly Nav2 Report

- generated_at: 2026-06-09T23:07:01+09:00
- total_trials: 866
- latest_git: 5545e6d hourly nav2 report 2026-06-09 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 295 | 245 | 0.831 | 3.41 | 0.00 | 5.00 |
| tb3-short-east | 286 | 240 | 0.839 | 4.76 | 1.00 | 7.00 |
| tb3-short-north | 285 | 249 | 0.874 | 40.53 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 132
- success: 734

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T22:39:28+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T22:42:07+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T22:45:46+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T22:47:36+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T22:49:29+0900 | smoke-003-repeat-r3 | success | true | 3 |
| 2026-06-09T22:51:22+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T22:53:16+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T22:55:13+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T22:57:03+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T22:58:53+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T23:01:31+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T23:05:08+0900 | smoke-003-repeat-r1 | success | true | 4 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
250999 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
255039 bash ./scripts/run_nav2_trial.sh
255062 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
