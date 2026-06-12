# Hourly Nav2 Report

- generated_at: 2026-06-13T00:07:01+09:00
- total_trials: 2842
- latest_git: bba6573 hourly nav2 report 2026-06-12 23:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 63 | 58 | 0.921 | 5.24 | 1.00 | 7.00 |
| baseline-north-control | 64 | 57 | 0.891 | 39.45 | 1.00 | 50.00 |
| baseline-smoke-control | 63 | 56 | 0.889 | 3.43 | 1.00 | 6.00 |
| fast-east | 128 | 109 | 0.852 | 4.80 | 1.00 | 7.00 |
| fast-north | 128 | 113 | 0.883 | 40.44 | 0.00 | 50.00 |
| relaxed-north | 126 | 106 | 0.841 | 36.48 | 1.00 | 50.00 |
| relaxed-smoke | 128 | 114 | 0.891 | 3.39 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 63 | 49 | 0.778 | 43.59 | 0.00 | 121.00 |
| yaw-east-pos | 63 | 53 | 0.841 | 12.94 | 1.00 | 29.00 |
| yaw-north-pos | 63 | 49 | 0.778 | 3.63 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 403
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2426

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T23:42:06+0900 | yaw-east-pos-r1 | success | true | 13 |
| 2026-06-12T23:44:10+0900 | yaw-east-neg-r1 | success | true | 103 |
| 2026-06-12T23:47:45+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T23:50:36+0900 | baseline-smoke-control-r1 | success | true | 6 |
| 2026-06-12T23:52:31+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T23:54:26+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T23:56:16+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T23:58:11+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T00:00:07+0900 | fast-north-r1 | success | true | 9 |
| 2026-06-13T00:02:05+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T00:04:41+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T00:06:33+0900 | relaxed-smoke-r2 | success | true | 4 |

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
1379673 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1416752 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
