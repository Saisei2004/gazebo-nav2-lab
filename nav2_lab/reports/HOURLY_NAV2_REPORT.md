# Hourly Nav2 Report

- generated_at: 2026-06-17T04:07:01+09:00
- total_trials: 5549
- latest_git: b5d66cf hourly nav2 report 2026-06-17 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 256 | 230 | 0.898 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 257 | 214 | 0.833 | 37.87 | 1.00 | 50.00 |
| baseline-smoke-control | 256 | 217 | 0.848 | 3.42 | 1.00 | 6.00 |
| fast-east | 514 | 446 | 0.868 | 4.90 | 1.00 | 7.00 |
| fast-north | 514 | 447 | 0.870 | 39.80 | 0.00 | 50.00 |
| relaxed-north | 514 | 441 | 0.858 | 35.18 | 1.00 | 51.00 |
| relaxed-smoke | 514 | 457 | 0.889 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 257 | 215 | 0.837 | 41.52 | 0.00 | 121.00 |
| yaw-east-pos | 257 | 225 | 0.875 | 13.64 | 1.00 | 54.00 |
| yaw-north-pos | 257 | 220 | 0.856 | 3.89 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 754
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4774

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T03:39:00+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-17T03:41:39+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T03:43:31+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-17T03:45:27+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T03:48:05+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-17T03:50:43+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T03:52:35+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T03:54:28+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T03:56:19+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-17T03:58:56+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-17T04:01:01+0900 | yaw-east-neg-r1 | success | true | 105 |
| 2026-06-17T04:04:36+0900 | yaw-north-pos-r1 | success | true | 4 |

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
1733222 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
