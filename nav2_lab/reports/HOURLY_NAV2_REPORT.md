# Hourly Nav2 Report

- generated_at: 2026-06-12T17:07:01+09:00
- total_trials: 2652
- latest_git: d0573b4 hourly nav2 report 2026-06-12 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 49 | 45 | 0.918 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 50 | 44 | 0.880 | 39.30 | 1.00 | 50.00 |
| baseline-smoke-control | 50 | 43 | 0.860 | 3.26 | 1.00 | 5.00 |
| fast-east | 100 | 83 | 0.830 | 4.71 | 1.00 | 7.00 |
| fast-north | 100 | 87 | 0.870 | 39.96 | 0.00 | 50.00 |
| relaxed-north | 100 | 86 | 0.860 | 37.22 | 1.00 | 50.00 |
| relaxed-smoke | 100 | 88 | 0.880 | 3.43 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 50 | 39 | 0.780 | 45.00 | 0.00 | 121.00 |
| yaw-east-pos | 50 | 43 | 0.860 | 13.24 | 1.00 | 29.00 |
| yaw-north-pos | 50 | 41 | 0.820 | 3.76 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 379
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2261

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T16:39:28+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T16:41:22+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T16:43:18+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-12T16:45:57+0900 | fast-north-r2 | success | true | 50 |
| 2026-06-12T16:48:35+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T16:50:28+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T16:52:21+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-12T16:55:02+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T16:57:39+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T16:59:44+0900 | yaw-east-neg-r1 | success | true | 91 |
| 2026-06-12T17:03:03+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T17:05:59+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |

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
494728 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
497250 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
