# Hourly Nav2 Report

- generated_at: 2026-06-17T12:07:01+09:00
- total_trials: 5764
- latest_git: 7bc28d6 hourly nav2 report 2026-06-17 11:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 272 | 246 | 0.904 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 273 | 228 | 0.835 | 37.99 | 1.00 | 50.00 |
| baseline-smoke-control | 272 | 231 | 0.849 | 3.42 | 1.00 | 6.00 |
| fast-east | 546 | 476 | 0.872 | 4.92 | 1.00 | 7.00 |
| fast-north | 544 | 477 | 0.877 | 40.14 | 0.00 | 50.00 |
| relaxed-north | 544 | 468 | 0.860 | 35.34 | 0.00 | 51.00 |
| relaxed-smoke | 544 | 483 | 0.888 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 272 | 228 | 0.838 | 41.10 | 0.00 | 121.00 |
| yaw-east-pos | 272 | 240 | 0.882 | 13.74 | 1.00 | 54.00 |
| yaw-north-pos | 272 | 230 | 0.846 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 774
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4969

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T11:40:36+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-17T11:42:29+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T11:44:20+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-17T11:46:58+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-17T11:49:34+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-17T11:51:38+0900 | yaw-east-neg-r1 | success | true | 40 |
| 2026-06-17T11:54:06+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-17T11:56:58+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-17T11:58:53+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-17T12:00:47+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T12:03:24+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T12:05:20+0900 | fast-east-r2 | success | true | 7 |

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
2764767 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2784530 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
