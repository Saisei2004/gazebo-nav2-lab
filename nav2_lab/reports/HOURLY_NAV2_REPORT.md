# Hourly Nav2 Report

- generated_at: 2026-06-14T13:07:01+09:00
- total_trials: 3848
- latest_git: 3bfab5d hourly nav2 report 2026-06-14 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 135 | 125 | 0.926 | 5.19 | 1.00 | 7.00 |
| baseline-north-control | 136 | 114 | 0.838 | 38.09 | 1.00 | 50.00 |
| baseline-smoke-control | 135 | 118 | 0.874 | 3.51 | 1.00 | 6.00 |
| fast-east | 272 | 232 | 0.853 | 4.87 | 1.00 | 7.00 |
| fast-north | 272 | 230 | 0.846 | 38.56 | 0.00 | 50.00 |
| relaxed-north | 270 | 231 | 0.856 | 35.60 | 1.00 | 50.00 |
| relaxed-smoke | 270 | 237 | 0.878 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 135 | 110 | 0.815 | 39.87 | 0.00 | 121.00 |
| yaw-east-pos | 135 | 120 | 0.889 | 13.94 | 1.00 | 54.00 |
| yaw-north-pos | 135 | 111 | 0.822 | 3.79 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 543
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3290

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T12:39:32+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T12:42:09+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T12:43:59+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-14T12:46:05+0900 | yaw-east-neg-r1 | success | true | 69 |
| 2026-06-14T12:49:03+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T12:51:56+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-14T12:53:51+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T12:55:45+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-14T12:58:24+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-14T13:00:19+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T13:02:14+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T13:04:50+0900 | fast-north-r2 | success | true | 36 |

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
2051246 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2084537 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
