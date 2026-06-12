# Hourly Nav2 Report

- generated_at: 2026-06-13T01:07:01+09:00
- total_trials: 2870
- latest_git: 914db2c hourly nav2 report 2026-06-13 00:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 65 | 60 | 0.923 | 5.25 | 1.00 | 7.00 |
| baseline-north-control | 66 | 57 | 0.864 | 38.32 | 1.00 | 50.00 |
| baseline-smoke-control | 65 | 58 | 0.892 | 3.45 | 1.00 | 6.00 |
| fast-east | 132 | 112 | 0.848 | 4.79 | 1.00 | 7.00 |
| fast-north | 132 | 117 | 0.886 | 40.69 | 0.00 | 50.00 |
| relaxed-north | 130 | 109 | 0.838 | 36.18 | 1.00 | 50.00 |
| relaxed-smoke | 132 | 117 | 0.886 | 3.36 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 65 | 50 | 0.769 | 42.57 | 0.00 | 121.00 |
| yaw-east-pos | 65 | 55 | 0.846 | 13.02 | 1.00 | 29.00 |
| yaw-north-pos | 65 | 51 | 0.785 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 409
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2448

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T00:43:14+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T00:45:17+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T00:47:07+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T00:50:00+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T00:51:54+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T00:53:48+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T00:55:38+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T00:57:32+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T00:59:23+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-13T01:02:01+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-13T01:04:38+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T01:06:31+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |

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
1510818 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1548483 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
