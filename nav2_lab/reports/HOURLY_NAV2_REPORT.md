# Hourly Nav2 Report

- generated_at: 2026-06-13T16:07:01+09:00
- total_trials: 3278
- latest_git: ca59e19 hourly nav2 report 2026-06-13 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 94 | 86 | 0.915 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 95 | 78 | 0.821 | 36.97 | 1.00 | 50.00 |
| baseline-smoke-control | 94 | 83 | 0.883 | 3.47 | 1.00 | 6.00 |
| fast-east | 190 | 159 | 0.837 | 4.78 | 1.00 | 7.00 |
| fast-north | 190 | 164 | 0.863 | 39.40 | 0.00 | 50.00 |
| relaxed-north | 190 | 157 | 0.826 | 35.32 | 1.00 | 50.00 |
| relaxed-smoke | 190 | 168 | 0.884 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 94 | 77 | 0.819 | 42.64 | 0.00 | 121.00 |
| yaw-east-pos | 94 | 81 | 0.862 | 13.64 | 1.00 | 54.00 |
| yaw-north-pos | 94 | 73 | 0.777 | 3.63 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 476
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2788

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T15:41:18+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T15:44:09+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T15:46:02+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T15:47:57+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-13T15:50:34+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-13T15:52:29+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T15:54:24+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-13T15:57:01+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T15:59:38+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T16:01:30+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T16:03:22+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T16:05:14+0900 | relaxed-north-r2 | success | true | 48 |

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
3466228 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3516710 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
