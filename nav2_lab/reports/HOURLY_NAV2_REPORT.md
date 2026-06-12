# Hourly Nav2 Report

- generated_at: 2026-06-13T03:07:02+09:00
- total_trials: 2924
- latest_git: dcf9b70 hourly nav2 report 2026-06-13 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 69 | 64 | 0.928 | 5.28 | 1.00 | 7.00 |
| baseline-north-control | 70 | 60 | 0.857 | 37.70 | 1.00 | 50.00 |
| baseline-smoke-control | 69 | 62 | 0.899 | 3.46 | 1.00 | 6.00 |
| fast-east | 140 | 118 | 0.843 | 4.77 | 1.00 | 7.00 |
| fast-north | 140 | 124 | 0.886 | 40.51 | 0.00 | 50.00 |
| relaxed-north | 138 | 115 | 0.833 | 35.91 | 1.00 | 50.00 |
| relaxed-smoke | 138 | 123 | 0.891 | 3.39 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 69 | 54 | 0.783 | 43.10 | 0.00 | 121.00 |
| yaw-east-pos | 69 | 59 | 0.855 | 13.12 | 1.00 | 29.00 |
| yaw-north-pos | 69 | 54 | 0.783 | 3.64 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 416
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2495

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T02:41:25+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-13T02:44:01+0900 | relaxed-north-r2 | success | true | 9 |
| 2026-06-13T02:46:00+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T02:48:02+0900 | yaw-east-neg-r1 | success | true | 22 |
| 2026-06-13T02:50:13+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T02:53:07+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-13T02:54:59+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T02:56:55+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-13T02:59:32+0900 | fast-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T03:01:25+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T03:03:19+0900 | fast-north-r1 | success | true | 12 |
| 2026-06-13T03:05:21+0900 | fast-north-r2 | success | true | 48 |

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
1779594 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1810408 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
