# Hourly Nav2 Report

- generated_at: 2026-06-12T06:07:01+09:00
- total_trials: 2354
- latest_git: 7056982 hourly nav2 report 2026-06-12 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 28 | 27 | 0.964 | 5.43 | 2.00 | 7.00 |
| baseline-north-control | 29 | 26 | 0.897 | 41.28 | 1.00 | 50.00 |
| baseline-smoke-control | 28 | 25 | 0.893 | 3.32 | 1.00 | 4.00 |
| fast-east | 58 | 48 | 0.828 | 4.67 | 1.00 | 7.00 |
| fast-north | 58 | 51 | 0.879 | 40.81 | 0.00 | 50.00 |
| relaxed-north | 58 | 50 | 0.862 | 38.02 | 1.00 | 50.00 |
| relaxed-smoke | 58 | 48 | 0.828 | 3.28 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 28 | 25 | 0.893 | 47.29 | 0.00 | 121.00 |
| yaw-east-pos | 28 | 25 | 0.893 | 13.89 | 1.00 | 29.00 |
| yaw-north-pos | 28 | 27 | 0.964 | 4.18 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 329
- failed_goal_timeout: 1
- runner_failed: 10
- success: 2014

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T05:40:31+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-12T05:43:26+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T05:45:16+0900 | baseline-east-control-r1 | success | true | 7 |
| 2026-06-12T05:47:12+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T05:49:02+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T05:50:58+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T05:52:54+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T05:55:31+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-12T05:58:11+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T06:00:04+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T06:01:54+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-12T06:04:31+0900 | relaxed-north-r2 | success | true | 47 |

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
3200668 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3251955 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
