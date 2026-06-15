# Hourly Nav2 Report

- generated_at: 2026-06-16T07:07:01+09:00
- total_trials: 4984
- latest_git: 51514b0 hourly nav2 report 2026-06-16 06:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 216 | 195 | 0.903 | 5.10 | 1.00 | 8.00 |
| baseline-north-control | 217 | 177 | 0.816 | 37.28 | 1.00 | 50.00 |
| baseline-smoke-control | 216 | 184 | 0.852 | 3.42 | 1.00 | 6.00 |
| fast-east | 434 | 378 | 0.871 | 4.91 | 1.00 | 7.00 |
| fast-north | 434 | 375 | 0.864 | 39.53 | 0.00 | 50.00 |
| relaxed-north | 432 | 369 | 0.854 | 35.30 | 1.00 | 51.00 |
| relaxed-smoke | 434 | 384 | 0.885 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 216 | 179 | 0.829 | 40.63 | 0.00 | 121.00 |
| yaw-east-pos | 216 | 192 | 0.889 | 13.87 | 1.00 | 54.00 |
| yaw-north-pos | 216 | 183 | 0.847 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 688
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4278

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T06:39:21+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-16T06:41:24+0900 | yaw-east-neg-r1 | success | true | 104 |
| 2026-06-16T06:45:01+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-16T06:47:55+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-16T06:49:49+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-16T06:51:46+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-16T06:54:22+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-16T06:56:18+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T06:58:12+0900 | fast-north-r1 | success | true | 50 |
| 2026-06-16T07:00:50+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T07:03:28+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T07:05:18+0900 | relaxed-smoke-r2 | success | true | 3 |

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
3248098 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3290125 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
