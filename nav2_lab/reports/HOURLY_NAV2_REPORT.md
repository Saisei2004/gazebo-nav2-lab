# Hourly Nav2 Report

- generated_at: 2026-06-11T15:07:01+09:00
- total_trials: 1955
- latest_git: 58e4a88 start nav2 optimization phase

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-north-control | 1 | 1 | 1.000 | 49.00 | 49.00 | 49.00 |
| fast-east | 2 | 2 | 1.000 | 5.50 | 5.00 | 6.00 |
| fast-north | 2 | 2 | 1.000 | 48.00 | 48.00 | 48.00 |
| relaxed-north | 2 | 2 | 1.000 | 47.50 | 47.00 | 48.00 |
| relaxed-smoke | 2 | 2 | 1.000 | 3.50 | 3.00 | 4.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 2 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-pos | 1 | 1 | 1.000 | 13.00 | 13.00 | 13.00 |

## Status Counts

- failed_goal_rc_0: 281
- runner_failed: 2
- success: 1672

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T14:38:32+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-11T14:41:12+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T14:43:06+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-11T14:45:02+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-11T14:47:40+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-11T14:50:17+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-11T14:52:10+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-11T14:54:02+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-11T14:56:38+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-11T14:59:15+0900 | stability-smoke-r1 | runner_failed | false |  |
| 2026-06-11T15:02:21+0900 | stability-smoke-r2 | runner_failed | false |  |
| 2026-06-11T15:05:28+0900 | yaw-east-pos-r1 | success | true | 13 |

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
1194905 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1289252 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
