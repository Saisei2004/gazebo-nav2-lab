# Hourly Nav2 Report

- generated_at: 2026-06-13T02:07:01+09:00
- total_trials: 2896
- latest_git: 20528a0 hourly nav2 report 2026-06-13 01:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 67 | 62 | 0.925 | 5.25 | 1.00 | 7.00 |
| baseline-north-control | 68 | 59 | 0.868 | 38.09 | 1.00 | 50.00 |
| baseline-smoke-control | 67 | 60 | 0.896 | 3.45 | 1.00 | 6.00 |
| fast-east | 136 | 115 | 0.846 | 4.77 | 1.00 | 7.00 |
| fast-north | 136 | 120 | 0.882 | 40.56 | 0.00 | 50.00 |
| relaxed-north | 134 | 112 | 0.836 | 36.19 | 1.00 | 50.00 |
| relaxed-smoke | 134 | 119 | 0.888 | 3.38 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 67 | 52 | 0.776 | 43.73 | 0.00 | 121.00 |
| yaw-east-pos | 67 | 57 | 0.851 | 13.07 | 1.00 | 29.00 |
| yaw-north-pos | 67 | 52 | 0.776 | 3.61 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 413
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2470

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T01:41:16+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-13T01:43:55+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T01:45:45+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-13T01:47:50+0900 | yaw-east-neg-r1 | success | true | 58 |
| 2026-06-13T01:50:37+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T01:53:27+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T01:55:20+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T01:57:14+0900 | baseline-north-control-r1 | success | true | 12 |
| 2026-06-13T01:59:15+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T02:01:09+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T02:03:03+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T02:04:53+0900 | fast-north-r2 | success | true | 48 |

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
1648789 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1678754 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
