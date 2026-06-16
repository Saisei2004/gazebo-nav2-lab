# Hourly Nav2 Report

- generated_at: 2026-06-16T13:07:01+09:00
- total_trials: 5145
- latest_git: 9cf64ab hourly nav2 report 2026-06-16 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 228 | 205 | 0.899 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 228 | 187 | 0.820 | 37.60 | 1.00 | 50.00 |
| baseline-smoke-control | 228 | 194 | 0.851 | 3.44 | 1.00 | 6.00 |
| fast-east | 456 | 395 | 0.866 | 4.90 | 1.00 | 7.00 |
| fast-north | 456 | 394 | 0.864 | 39.48 | 0.00 | 50.00 |
| relaxed-north | 456 | 389 | 0.853 | 35.31 | 1.00 | 51.00 |
| relaxed-smoke | 456 | 405 | 0.888 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 228 | 189 | 0.829 | 40.98 | 0.00 | 121.00 |
| yaw-east-pos | 228 | 204 | 0.895 | 13.96 | 1.00 | 54.00 |
| yaw-north-pos | 228 | 194 | 0.851 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 708
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4418

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T12:39:43+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T12:41:39+0900 | fast-north-r1 | success | true | 13 |
| 2026-06-16T12:43:41+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T12:45:30+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T12:47:23+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T12:49:12+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T12:51:49+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-16T12:54:27+0900 | yaw-east-pos-r1 | success | true | 13 |
| 2026-06-16T12:56:29+0900 | yaw-east-neg-r1 | failed_goal_timeout | false | 121 |
| 2026-06-16T13:00:18+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T13:03:12+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T13:05:05+0900 | baseline-east-control-r1 | success | true | 5 |

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
4070389 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4078869 bash ./scripts/run_nav2_trial.sh
4078973 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
