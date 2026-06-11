# Hourly Nav2 Report

- generated_at: 2026-06-12T03:07:01+09:00
- total_trials: 2274
- latest_git: 7a0ed0d hourly nav2 report 2026-06-12 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 22 | 21 | 0.955 | 5.27 | 2.00 | 7.00 |
| baseline-north-control | 23 | 22 | 0.957 | 43.52 | 3.00 | 50.00 |
| baseline-smoke-control | 23 | 21 | 0.913 | 3.39 | 1.00 | 4.00 |
| fast-east | 46 | 37 | 0.804 | 4.57 | 1.00 | 7.00 |
| fast-north | 46 | 39 | 0.848 | 39.72 | 0.00 | 50.00 |
| relaxed-north | 46 | 38 | 0.826 | 35.43 | 1.00 | 50.00 |
| relaxed-smoke | 46 | 39 | 0.848 | 3.33 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 23 | 21 | 0.913 | 52.13 | 1.00 | 121.00 |
| yaw-east-pos | 23 | 20 | 0.870 | 13.78 | 1.00 | 29.00 |
| yaw-north-pos | 23 | 22 | 0.957 | 4.13 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 321
- failed_goal_timeout: 1
- runner_failed: 10
- success: 1942

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T02:42:00+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T02:43:54+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T02:45:49+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T02:48:26+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T02:50:16+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T02:52:08+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T02:54:01+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T02:55:51+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-12T02:58:30+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T03:00:33+0900 | yaw-east-neg-r1 | success | true | 58 |
| 2026-06-12T03:03:21+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T03:06:15+0900 | baseline-smoke-control-r1 | success | true | 3 |

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
2855190 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2857168 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
