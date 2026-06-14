# Hourly Nav2 Report

- generated_at: 2026-06-14T17:07:01+09:00
- total_trials: 3956
- latest_git: e21af2a hourly nav2 report 2026-06-14 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 143 | 133 | 0.930 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 144 | 121 | 0.840 | 38.32 | 1.00 | 50.00 |
| baseline-smoke-control | 143 | 123 | 0.860 | 3.48 | 1.00 | 6.00 |
| fast-east | 286 | 244 | 0.853 | 4.87 | 1.00 | 7.00 |
| fast-north | 286 | 244 | 0.853 | 38.90 | 0.00 | 50.00 |
| relaxed-north | 286 | 245 | 0.857 | 35.70 | 1.00 | 50.00 |
| relaxed-smoke | 286 | 251 | 0.878 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 143 | 116 | 0.811 | 39.41 | 0.00 | 121.00 |
| yaw-east-pos | 143 | 128 | 0.895 | 13.97 | 1.00 | 54.00 |
| yaw-north-pos | 143 | 118 | 0.825 | 3.81 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 556
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3385

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T16:40:44+0900 | fast-north-r1 | success | true | 12 |
| 2026-06-14T16:42:45+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-14T16:45:23+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T16:47:15+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T16:49:07+0900 | relaxed-north-r1 | success | true | 12 |
| 2026-06-14T16:51:09+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T16:53:46+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T16:55:49+0900 | yaw-east-neg-r1 | success | true | 70 |
| 2026-06-14T16:58:49+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T17:01:41+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T17:03:34+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T17:05:30+0900 | baseline-north-control-r1 | success | true | 48 |

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
2598274 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2610330 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
