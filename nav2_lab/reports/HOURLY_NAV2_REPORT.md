# Hourly Nav2 Report

- generated_at: 2026-06-15T08:07:01+09:00
- total_trials: 4361
- latest_git: c45e0ec hourly nav2 report 2026-06-15 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 172 | 159 | 0.924 | 5.18 | 1.00 | 8.00 |
| baseline-north-control | 172 | 141 | 0.820 | 37.69 | 1.00 | 50.00 |
| baseline-smoke-control | 172 | 148 | 0.860 | 3.45 | 1.00 | 6.00 |
| fast-east | 344 | 293 | 0.852 | 4.85 | 1.00 | 7.00 |
| fast-north | 344 | 297 | 0.863 | 39.40 | 0.00 | 50.00 |
| relaxed-north | 344 | 296 | 0.860 | 35.78 | 1.00 | 51.00 |
| relaxed-smoke | 344 | 306 | 0.890 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 172 | 143 | 0.831 | 40.07 | 0.00 | 121.00 |
| yaw-east-pos | 172 | 154 | 0.895 | 13.90 | 1.00 | 54.00 |
| yaw-north-pos | 172 | 143 | 0.831 | 3.82 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 604
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3742

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T07:40:45+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T07:42:40+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-15T07:45:18+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-15T07:47:56+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-15T07:49:51+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-15T07:51:45+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-15T07:54:22+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-15T07:57:00+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-15T07:59:04+0900 | yaw-east-neg-r1 | success | true | 29 |
| 2026-06-15T08:01:23+0900 | yaw-north-pos-r1 | success | true | 6 |
| 2026-06-15T08:04:17+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-15T08:06:09+0900 | baseline-east-control-r1 | success | true | 4 |

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
383118 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
389493 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
