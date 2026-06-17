# Hourly Nav2 Report

- generated_at: 2026-06-17T14:57:06+09:00
- total_trials: 5843
- latest_git: 733c8ba hourly nav2 report 2026-06-17 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 277 | 251 | 0.906 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 278 | 233 | 0.838 | 38.17 | 1.00 | 50.00 |
| baseline-smoke-control | 277 | 234 | 0.845 | 3.42 | 1.00 | 6.00 |
| fast-east | 556 | 486 | 0.874 | 4.93 | 1.00 | 7.00 |
| fast-north | 556 | 486 | 0.874 | 40.06 | 0.00 | 50.00 |
| relaxed-north | 556 | 476 | 0.856 | 35.01 | 0.00 | 51.00 |
| relaxed-smoke | 556 | 494 | 0.888 | 3.31 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 278 | 232 | 0.835 | 40.62 | 0.00 | 121.00 |
| yaw-east-pos | 278 | 246 | 0.885 | 13.77 | 1.00 | 54.00 |
| yaw-north-pos | 278 | 235 | 0.845 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 787
- failed_goal_timeout: 11
- runner_failed: 10
- success: 5035

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T14:31:37+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T14:34:14+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-17T14:36:08+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-17T14:38:03+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-17T14:40:40+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-17T14:43:17+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T14:45:09+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T14:47:01+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-17T14:49:38+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T14:51:28+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-17T14:53:31+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-17T14:55:39+0900 | yaw-north-pos-r1 | success | true | 4 |

## Runner State

```text
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
3151714 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
