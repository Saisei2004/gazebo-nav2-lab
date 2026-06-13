# Hourly Nav2 Report

- generated_at: 2026-06-14T02:07:01+09:00
- total_trials: 3549
- latest_git: 55af7b4 hourly nav2 report 2026-06-14 01:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 114 | 105 | 0.921 | 5.17 | 1.00 | 7.00 |
| baseline-north-control | 114 | 95 | 0.833 | 37.34 | 1.00 | 50.00 |
| baseline-smoke-control | 114 | 98 | 0.860 | 3.48 | 1.00 | 6.00 |
| fast-east | 228 | 191 | 0.838 | 4.81 | 1.00 | 7.00 |
| fast-north | 228 | 195 | 0.855 | 39.26 | 0.00 | 50.00 |
| relaxed-north | 228 | 193 | 0.846 | 35.62 | 1.00 | 50.00 |
| relaxed-smoke | 228 | 201 | 0.882 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 114 | 93 | 0.816 | 40.92 | 0.00 | 121.00 |
| yaw-east-pos | 114 | 100 | 0.877 | 13.76 | 1.00 | 54.00 |
| yaw-north-pos | 114 | 91 | 0.798 | 3.70 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 510
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3024

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T01:41:48+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T01:43:44+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T01:45:34+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-14T01:48:12+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-14T01:50:08+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T01:52:01+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T01:54:39+0900 | relaxed-north-r2 | success | true | 10 |
| 2026-06-14T01:56:39+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T01:58:43+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T02:00:33+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-14T02:03:27+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-14T02:05:23+0900 | baseline-east-control-r1 | success | true | 5 |

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
630712 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
638791 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
