# Hourly Nav2 Report

- generated_at: 2026-06-17T10:07:01+09:00
- total_trials: 5711
- latest_git: 8ec17ea hourly nav2 report 2026-06-17 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 268 | 242 | 0.903 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 269 | 224 | 0.833 | 37.84 | 1.00 | 50.00 |
| baseline-smoke-control | 268 | 227 | 0.847 | 3.42 | 1.00 | 6.00 |
| fast-east | 538 | 468 | 0.870 | 4.91 | 1.00 | 7.00 |
| fast-north | 538 | 471 | 0.875 | 40.05 | 0.00 | 50.00 |
| relaxed-north | 536 | 462 | 0.862 | 35.33 | 1.00 | 51.00 |
| relaxed-smoke | 537 | 478 | 0.890 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 268 | 224 | 0.836 | 41.19 | 0.00 | 121.00 |
| yaw-east-pos | 268 | 236 | 0.881 | 13.72 | 1.00 | 54.00 |
| yaw-north-pos | 268 | 228 | 0.851 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 768
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4922

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T09:40:29+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-17T09:43:08+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-17T09:45:13+0900 | yaw-east-neg-r1 | success | true | 105 |
| 2026-06-17T09:48:47+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-17T09:51:40+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-17T09:53:34+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T09:55:29+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-17T09:58:07+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T10:00:02+0900 | fast-east-r2 | success | true | 7 |
| 2026-06-17T10:01:57+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T10:04:34+0900 | fast-north-r2 | success | true | 14 |
| 2026-06-17T10:06:37+0900 | relaxed-smoke-r1 | success | true | 3 |

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
2487231 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2520759 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
