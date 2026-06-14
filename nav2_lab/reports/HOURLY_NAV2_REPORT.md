# Hourly Nav2 Report

- generated_at: 2026-06-14T20:07:01+09:00
- total_trials: 4037
- latest_git: deccfe1 hourly nav2 report 2026-06-14 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 148 | 138 | 0.932 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 149 | 125 | 0.839 | 38.33 | 1.00 | 50.00 |
| baseline-smoke-control | 148 | 128 | 0.865 | 3.48 | 1.00 | 6.00 |
| fast-east | 298 | 254 | 0.852 | 4.87 | 1.00 | 7.00 |
| fast-north | 298 | 254 | 0.852 | 38.88 | 0.00 | 50.00 |
| relaxed-north | 298 | 257 | 0.862 | 35.95 | 1.00 | 50.00 |
| relaxed-smoke | 298 | 263 | 0.883 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 149 | 122 | 0.819 | 39.39 | 0.00 | 121.00 |
| yaw-east-pos | 149 | 134 | 0.899 | 14.01 | 1.00 | 54.00 |
| yaw-north-pos | 149 | 123 | 0.826 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 562
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3460

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T19:41:37+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T19:44:16+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T19:46:10+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T19:48:04+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-14T19:50:41+0900 | fast-north-r2 | success | true | 26 |
| 2026-06-14T19:52:56+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T19:54:50+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-14T19:56:43+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T19:59:20+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T20:01:57+0900 | yaw-east-pos-r1 | success | true | 17 |
| 2026-06-14T20:04:02+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-14T20:06:09+0900 | yaw-north-pos-r1 | success | true | 4 |

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
2941361 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3005534 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
