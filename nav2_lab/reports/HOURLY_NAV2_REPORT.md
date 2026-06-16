# Hourly Nav2 Report

- generated_at: 2026-06-16T21:07:01+09:00
- total_trials: 5362
- latest_git: 14c053f hourly nav2 report 2026-06-16 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 243 | 218 | 0.897 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 244 | 202 | 0.828 | 37.82 | 1.00 | 50.00 |
| baseline-smoke-control | 243 | 207 | 0.852 | 3.45 | 1.00 | 6.00 |
| fast-east | 488 | 423 | 0.867 | 4.90 | 1.00 | 7.00 |
| fast-north | 488 | 424 | 0.869 | 39.63 | 0.00 | 50.00 |
| relaxed-north | 486 | 416 | 0.856 | 35.09 | 1.00 | 51.00 |
| relaxed-smoke | 488 | 433 | 0.887 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 243 | 204 | 0.840 | 41.24 | 0.00 | 121.00 |
| yaw-east-pos | 243 | 214 | 0.881 | 13.76 | 1.00 | 54.00 |
| yaw-north-pos | 243 | 206 | 0.848 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 734
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4609

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T20:43:33+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T20:45:22+0900 | yaw-east-neg-r1 | success | true | 25 |
| 2026-06-16T20:47:37+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T20:50:27+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T20:52:21+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T20:54:14+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T20:56:07+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T20:58:02+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T20:59:56+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T21:02:36+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T21:04:26+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-16T21:06:18+0900 | relaxed-smoke-r2 | success | true | 3 |

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
774957 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
811777 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
