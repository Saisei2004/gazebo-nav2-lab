# Hourly Nav2 Report

- generated_at: 2026-06-14T05:07:01+09:00
- total_trials: 3632
- latest_git: a974067 hourly nav2 report 2026-06-14 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 119 | 110 | 0.924 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 120 | 100 | 0.833 | 37.50 | 1.00 | 50.00 |
| baseline-smoke-control | 120 | 104 | 0.867 | 3.51 | 1.00 | 6.00 |
| fast-east | 240 | 202 | 0.842 | 4.84 | 1.00 | 7.00 |
| fast-north | 240 | 205 | 0.854 | 38.87 | 0.00 | 50.00 |
| relaxed-north | 240 | 203 | 0.846 | 35.50 | 1.00 | 50.00 |
| relaxed-smoke | 240 | 208 | 0.867 | 3.30 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 120 | 97 | 0.808 | 39.89 | 0.00 | 121.00 |
| yaw-east-pos | 120 | 105 | 0.875 | 13.89 | 1.00 | 54.00 |
| yaw-north-pos | 120 | 97 | 0.808 | 3.73 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 524
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3093

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T04:40:10+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T04:42:04+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T04:43:57+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T04:46:34+0900 | fast-north-r2 | success | true | 50 |
| 2026-06-14T04:49:13+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T04:51:03+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T04:52:54+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T04:55:31+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-14T04:58:09+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T05:00:13+0900 | yaw-east-neg-r1 | success | true | 67 |
| 2026-06-14T05:03:08+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T05:06:03+0900 | baseline-smoke-control-r1 | success | true | 5 |

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
1030473 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1032904 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
