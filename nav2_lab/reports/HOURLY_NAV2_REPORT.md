# Hourly Nav2 Report

- generated_at: 2026-06-17T03:07:01+09:00
- total_trials: 5523
- latest_git: 7e00254 hourly nav2 report 2026-06-17 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 255 | 229 | 0.898 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 255 | 212 | 0.831 | 37.94 | 1.00 | 50.00 |
| baseline-smoke-control | 255 | 216 | 0.847 | 3.42 | 1.00 | 6.00 |
| fast-east | 510 | 443 | 0.869 | 4.91 | 1.00 | 7.00 |
| fast-north | 510 | 444 | 0.871 | 39.82 | 0.00 | 50.00 |
| relaxed-north | 510 | 438 | 0.859 | 35.20 | 1.00 | 51.00 |
| relaxed-smoke | 510 | 453 | 0.888 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 255 | 213 | 0.835 | 41.11 | 0.00 | 121.00 |
| yaw-east-pos | 255 | 223 | 0.875 | 13.63 | 1.00 | 54.00 |
| yaw-north-pos | 255 | 218 | 0.855 | 3.89 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 751
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4751

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T02:41:23+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-17T02:43:18+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-17T02:45:56+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-17T02:48:34+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T02:50:27+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-17T02:52:21+0900 | relaxed-north-r1 | success | true | 16 |
| 2026-06-17T02:54:27+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-17T02:57:04+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-17T02:59:09+0900 | yaw-east-neg-r1 | success | true | 21 |
| 2026-06-17T03:01:18+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-17T03:04:13+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-17T03:06:05+0900 | baseline-east-control-r1 | success | true | 6 |

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
1595040 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1601534 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
