# Hourly Nav2 Report

- generated_at: 2026-06-17T07:07:02+09:00
- total_trials: 5630
- latest_git: 4541c4a hourly nav2 report 2026-06-17 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 262 | 236 | 0.901 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 263 | 219 | 0.833 | 37.78 | 1.00 | 50.00 |
| baseline-smoke-control | 262 | 222 | 0.847 | 3.41 | 1.00 | 6.00 |
| fast-east | 526 | 457 | 0.869 | 4.91 | 1.00 | 7.00 |
| fast-north | 526 | 459 | 0.873 | 39.98 | 0.00 | 50.00 |
| relaxed-north | 526 | 453 | 0.861 | 35.25 | 1.00 | 51.00 |
| relaxed-smoke | 526 | 468 | 0.890 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 262 | 220 | 0.840 | 41.34 | 0.00 | 121.00 |
| yaw-east-pos | 262 | 230 | 0.878 | 13.66 | 1.00 | 54.00 |
| yaw-north-pos | 262 | 223 | 0.851 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 760
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4849

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T06:40:12+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-17T06:43:05+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-17T06:44:58+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T06:46:52+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T06:49:28+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T06:51:23+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-17T06:53:18+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T06:55:54+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-17T06:58:32+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T07:00:25+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T07:02:17+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-17T07:04:54+0900 | relaxed-north-r2 | success | true | 48 |

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
2074615 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2127516 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
