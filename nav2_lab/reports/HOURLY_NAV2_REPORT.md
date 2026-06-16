# Hourly Nav2 Report

- generated_at: 2026-06-17T05:07:01+09:00
- total_trials: 5577
- latest_git: d0e8692 hourly nav2 report 2026-06-17 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 258 | 232 | 0.899 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 259 | 215 | 0.830 | 37.77 | 1.00 | 50.00 |
| baseline-smoke-control | 258 | 218 | 0.845 | 3.41 | 1.00 | 6.00 |
| fast-east | 518 | 450 | 0.869 | 4.91 | 1.00 | 7.00 |
| fast-north | 518 | 451 | 0.871 | 39.86 | 0.00 | 50.00 |
| relaxed-north | 518 | 445 | 0.859 | 35.05 | 1.00 | 51.00 |
| relaxed-smoke | 518 | 460 | 0.888 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 259 | 217 | 0.838 | 41.36 | 0.00 | 121.00 |
| yaw-east-pos | 259 | 227 | 0.876 | 13.65 | 1.00 | 54.00 |
| yaw-north-pos | 259 | 222 | 0.857 | 3.89 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 757
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4799

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T04:42:20+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-17T04:44:11+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T04:46:06+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-17T04:47:59+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T04:50:36+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-17T04:53:14+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T04:55:04+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-17T04:56:57+0900 | relaxed-north-r1 | success | true | 9 |
| 2026-06-17T04:58:57+0900 | relaxed-north-r2 | success | true | 9 |
| 2026-06-17T05:00:55+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-17T05:03:01+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-17T05:05:06+0900 | yaw-north-pos-r1 | success | true | 4 |

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
1865584 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
