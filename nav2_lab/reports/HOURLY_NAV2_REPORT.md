# Hourly Nav2 Report

- generated_at: 2026-06-11T22:07:01+09:00
- total_trials: 2141
- latest_git: 36b4675 hourly nav2 report 2026-06-11 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 13 | 13 | 1.000 | 5.54 | 5.00 | 7.00 |
| baseline-north-control | 14 | 13 | 0.929 | 40.57 | 3.00 | 50.00 |
| baseline-smoke-control | 13 | 11 | 0.846 | 3.31 | 1.00 | 4.00 |
| fast-east | 28 | 22 | 0.786 | 4.43 | 1.00 | 6.00 |
| fast-north | 28 | 22 | 0.786 | 36.89 | 0.00 | 50.00 |
| relaxed-north | 26 | 23 | 0.885 | 36.31 | 1.00 | 49.00 |
| relaxed-smoke | 27 | 23 | 0.852 | 3.48 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 13 | 12 | 0.923 | 51.23 | 1.00 | 115.00 |
| yaw-east-pos | 13 | 10 | 0.769 | 12.00 | 1.00 | 21.00 |
| yaw-north-pos | 13 | 12 | 0.923 | 4.00 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 308
- runner_failed: 10
- success: 1823

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T21:41:15+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T21:43:05+0900 | yaw-east-pos-r1 | success | true | 18 |
| 2026-06-11T21:45:12+0900 | yaw-east-neg-r1 | success | true | 81 |
| 2026-06-11T21:48:24+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-11T21:51:18+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-11T21:53:11+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-11T21:55:06+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-11T21:57:43+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T21:59:37+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-11T22:01:31+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-11T22:04:08+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T22:06:00+0900 | relaxed-smoke-r1 | success | true | 4 |

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
2165129 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2199873 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
