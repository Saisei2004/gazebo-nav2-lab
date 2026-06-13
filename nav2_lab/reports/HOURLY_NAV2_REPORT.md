# Hourly Nav2 Report

- generated_at: 2026-06-13T09:07:01+09:00
- total_trials: 3087
- latest_git: f342d2e hourly nav2 report 2026-06-13 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 81 | 75 | 0.926 | 5.23 | 1.00 | 7.00 |
| baseline-north-control | 81 | 67 | 0.827 | 36.78 | 1.00 | 50.00 |
| baseline-smoke-control | 81 | 72 | 0.889 | 3.44 | 1.00 | 6.00 |
| fast-east | 162 | 138 | 0.852 | 4.83 | 1.00 | 7.00 |
| fast-north | 162 | 142 | 0.877 | 40.17 | 0.00 | 50.00 |
| relaxed-north | 162 | 137 | 0.846 | 35.90 | 1.00 | 50.00 |
| relaxed-smoke | 162 | 142 | 0.877 | 3.35 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 81 | 64 | 0.790 | 42.84 | 0.00 | 121.00 |
| yaw-east-pos | 81 | 68 | 0.840 | 13.33 | 1.00 | 54.00 |
| yaw-north-pos | 81 | 63 | 0.778 | 3.63 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 443
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2630

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T08:40:48+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T08:42:43+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-13T08:45:20+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T08:47:57+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T08:49:50+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T08:51:40+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-13T08:54:19+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T08:56:55+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T08:58:59+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-13T09:01:08+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T09:04:02+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T09:05:55+0900 | baseline-east-control-r1 | success | true | 6 |

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
2592334 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2599271 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
