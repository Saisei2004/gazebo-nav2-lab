# Hourly Nav2 Report

- generated_at: 2026-06-15T16:07:01+09:00
- total_trials: 4579
- latest_git: d5d2286 hourly nav2 report 2026-06-15 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 187 | 168 | 0.898 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 188 | 155 | 0.824 | 37.55 | 1.00 | 50.00 |
| baseline-smoke-control | 187 | 159 | 0.850 | 3.42 | 1.00 | 6.00 |
| fast-east | 376 | 323 | 0.859 | 4.86 | 1.00 | 7.00 |
| fast-north | 376 | 323 | 0.859 | 39.27 | 0.00 | 50.00 |
| relaxed-north | 375 | 322 | 0.859 | 35.92 | 1.00 | 51.00 |
| relaxed-smoke | 376 | 335 | 0.891 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 187 | 155 | 0.829 | 39.50 | 0.00 | 121.00 |
| yaw-east-pos | 187 | 167 | 0.893 | 13.81 | 1.00 | 54.00 |
| yaw-north-pos | 187 | 157 | 0.840 | 3.83 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 637
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3926

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T15:42:25+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T15:44:15+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T15:47:09+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-15T15:49:01+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-15T15:50:54+0900 | baseline-north-control-r1 | success | true | 21 |
| 2026-06-15T15:53:04+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-15T15:54:58+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T15:56:52+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-15T15:59:30+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-15T16:02:07+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T16:03:57+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T16:05:49+0900 | relaxed-north-r1 | success | true | 49 |

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
1354740 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1398992 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
