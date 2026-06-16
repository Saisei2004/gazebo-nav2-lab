# Hourly Nav2 Report

- generated_at: 2026-06-17T06:07:01+09:00
- total_trials: 5604
- latest_git: 1b92ec5 hourly nav2 report 2026-06-17 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 260 | 234 | 0.900 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 261 | 217 | 0.831 | 37.70 | 1.00 | 50.00 |
| baseline-smoke-control | 260 | 220 | 0.846 | 3.42 | 1.00 | 6.00 |
| fast-east | 522 | 454 | 0.870 | 4.92 | 1.00 | 7.00 |
| fast-north | 522 | 455 | 0.872 | 39.92 | 0.00 | 50.00 |
| relaxed-north | 522 | 449 | 0.860 | 35.16 | 1.00 | 51.00 |
| relaxed-smoke | 522 | 464 | 0.889 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 261 | 219 | 0.839 | 41.38 | 0.00 | 121.00 |
| yaw-east-pos | 261 | 229 | 0.877 | 13.65 | 1.00 | 54.00 |
| yaw-north-pos | 260 | 222 | 0.854 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 758
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4825

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T05:40:47+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T05:42:42+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T05:45:19+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T05:47:13+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-17T05:49:07+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T05:51:44+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-17T05:54:21+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-17T05:56:14+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T05:58:06+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-17T06:00:44+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-17T06:03:22+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-17T06:05:28+0900 | yaw-east-neg-r1 | success | true | 72 |

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
1935268 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1997216 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
