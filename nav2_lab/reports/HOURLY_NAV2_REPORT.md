# Hourly Nav2 Report

- generated_at: 2026-06-12T08:07:01+09:00
- total_trials: 2407
- latest_git: 02bb8ed hourly nav2 report 2026-06-12 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 32 | 31 | 0.969 | 5.41 | 2.00 | 7.00 |
| baseline-north-control | 33 | 30 | 0.909 | 41.03 | 1.00 | 50.00 |
| baseline-smoke-control | 32 | 28 | 0.875 | 3.25 | 1.00 | 4.00 |
| fast-east | 66 | 54 | 0.818 | 4.64 | 1.00 | 7.00 |
| fast-north | 66 | 57 | 0.864 | 39.70 | 0.00 | 50.00 |
| relaxed-north | 64 | 56 | 0.875 | 38.31 | 1.00 | 50.00 |
| relaxed-smoke | 65 | 54 | 0.831 | 3.32 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 32 | 28 | 0.875 | 52.34 | 0.00 | 121.00 |
| yaw-east-pos | 32 | 28 | 0.875 | 13.62 | 1.00 | 29.00 |
| yaw-north-pos | 32 | 30 | 0.938 | 4.19 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 337
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2058

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T07:39:15+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T07:41:51+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T07:43:54+0900 | yaw-east-neg-r1 | success | true | 104 |
| 2026-06-12T07:47:28+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-12T07:50:24+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T07:52:14+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T07:54:08+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-12T07:56:47+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T07:58:42+0900 | fast-east-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T08:00:35+0900 | fast-north-r1 | success | true | 12 |
| 2026-06-12T08:02:37+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T08:05:16+0900 | relaxed-smoke-r1 | success | true | 3 |

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
3476860 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3513459 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
