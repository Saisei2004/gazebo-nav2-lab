# Hourly Nav2 Report

- generated_at: 2026-06-17T00:07:01+09:00
- total_trials: 5442
- latest_git: b300247 hourly nav2 report 2026-06-16 23:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 249 | 224 | 0.900 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 250 | 207 | 0.828 | 37.73 | 1.00 | 50.00 |
| baseline-smoke-control | 249 | 212 | 0.851 | 3.44 | 1.00 | 6.00 |
| fast-east | 500 | 433 | 0.866 | 4.90 | 1.00 | 7.00 |
| fast-north | 498 | 434 | 0.871 | 39.81 | 0.00 | 50.00 |
| relaxed-north | 498 | 427 | 0.857 | 35.17 | 1.00 | 51.00 |
| relaxed-smoke | 498 | 443 | 0.890 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 249 | 209 | 0.839 | 41.29 | 0.00 | 121.00 |
| yaw-east-pos | 249 | 218 | 0.876 | 13.65 | 1.00 | 54.00 |
| yaw-north-pos | 249 | 212 | 0.851 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 741
- failed_goal_timeout: 10
- runner_failed: 10
- success: 4681

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T23:42:10+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T23:44:03+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T23:45:57+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-16T23:48:36+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T23:51:13+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T23:53:03+0900 | yaw-east-neg-r1 | success | true | 18 |
| 2026-06-16T23:55:09+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T23:58:03+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-16T23:59:57+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T00:01:52+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T00:03:41+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T00:05:31+0900 | fast-east-r2 | success | true | 6 |

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
1187020 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1206739 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
