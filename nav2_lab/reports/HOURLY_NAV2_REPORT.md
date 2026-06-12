# Hourly Nav2 Report

- generated_at: 2026-06-12T10:07:01+09:00
- total_trials: 2461
- latest_git: a50db01 hourly nav2 report 2026-06-12 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 36 | 34 | 0.944 | 5.36 | 2.00 | 7.00 |
| baseline-north-control | 37 | 34 | 0.919 | 41.78 | 1.00 | 50.00 |
| baseline-smoke-control | 36 | 32 | 0.889 | 3.31 | 1.00 | 4.00 |
| fast-east | 74 | 61 | 0.824 | 4.65 | 1.00 | 7.00 |
| fast-north | 73 | 63 | 0.863 | 39.85 | 0.00 | 50.00 |
| relaxed-north | 72 | 62 | 0.861 | 37.86 | 1.00 | 50.00 |
| relaxed-smoke | 72 | 60 | 0.833 | 3.32 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 36 | 31 | 0.861 | 50.67 | 0.00 | 121.00 |
| yaw-east-pos | 36 | 32 | 0.889 | 13.75 | 1.00 | 29.00 |
| yaw-north-pos | 36 | 31 | 0.861 | 3.92 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 347
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2102

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T09:39:28+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T09:41:22+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-12T09:43:59+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T09:46:37+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T09:48:42+0900 | yaw-east-neg-r1 | success | true | 63 |
| 2026-06-12T09:51:35+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T09:54:28+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T09:56:20+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T09:58:15+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T10:00:53+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T10:02:48+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T10:04:42+0900 | fast-north-r1 | success | true | 48 |

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
3749099 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3776851 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
