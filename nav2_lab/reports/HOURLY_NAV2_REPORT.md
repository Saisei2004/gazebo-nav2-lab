# Hourly Nav2 Report

- generated_at: 2026-06-10T08:07:01+09:00
- total_trials: 1111
- latest_git: 2956ada hourly nav2 report 2026-06-10 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 378 | 318 | 0.841 | 3.47 | 0.00 | 5.00 |
| tb3-short-east | 367 | 314 | 0.856 | 4.83 | 1.00 | 7.00 |
| tb3-short-north | 366 | 319 | 0.872 | 40.65 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 160
- success: 951

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-10T07:42:09+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T07:44:03+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-10T07:45:59+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-10T07:47:52+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-10T07:49:46+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-10T07:51:40+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-10T07:53:37+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-10T07:56:15+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-10T07:58:51+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-10T08:02:28+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-10T08:04:22+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-10T08:06:16+0900 | smoke-003-repeat-r3 | success | true | 3 |

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
1424461 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1434917 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
