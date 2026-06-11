# Hourly Nav2 Report

- generated_at: 2026-06-11T18:07:01+09:00
- total_trials: 2033
- latest_git: af53f28 remove invalid nav2 stability candidate

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 5 | 5 | 1.000 | 5.00 | 5.00 | 5.00 |
| baseline-north-control | 6 | 6 | 1.000 | 48.50 | 48.00 | 49.00 |
| baseline-smoke-control | 5 | 3 | 0.600 | 2.60 | 1.00 | 4.00 |
| fast-east | 12 | 9 | 0.750 | 4.50 | 1.00 | 6.00 |
| fast-north | 12 | 10 | 0.833 | 40.33 | 0.00 | 49.00 |
| relaxed-north | 12 | 12 | 1.000 | 38.42 | 7.00 | 48.00 |
| relaxed-smoke | 12 | 10 | 0.833 | 3.67 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 5 | 5 | 1.000 | 40.20 | 18.00 | 65.00 |
| yaw-east-pos | 6 | 4 | 0.667 | 10.33 | 1.00 | 21.00 |
| yaw-north-pos | 5 | 5 | 1.000 | 4.20 | 4.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 292
- runner_failed: 10
- success: 1731

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T17:42:20+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T17:44:09+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-11T17:46:05+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-11T17:48:43+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T17:50:37+0900 | fast-east-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T17:52:30+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-11T17:55:07+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-11T17:57:46+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-11T17:59:41+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-11T18:01:34+0900 | relaxed-north-r1 | success | true | 7 |
| 2026-06-11T18:03:31+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-11T18:06:08+0900 | yaw-east-pos-r1 | success | true | 13 |

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
1622672 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1674645 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
