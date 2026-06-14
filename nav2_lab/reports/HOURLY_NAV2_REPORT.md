# Hourly Nav2 Report

- generated_at: 2026-06-15T04:07:01+09:00
- total_trials: 4251
- latest_git: 78ea6e4 hourly nav2 report 2026-06-15 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 164 | 152 | 0.927 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 165 | 139 | 0.842 | 38.66 | 1.00 | 50.00 |
| baseline-smoke-control | 164 | 141 | 0.860 | 3.46 | 1.00 | 6.00 |
| fast-east | 329 | 280 | 0.851 | 4.84 | 1.00 | 7.00 |
| fast-north | 328 | 282 | 0.860 | 39.22 | 0.00 | 50.00 |
| relaxed-north | 328 | 282 | 0.860 | 35.78 | 1.00 | 51.00 |
| relaxed-smoke | 328 | 291 | 0.887 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 164 | 136 | 0.829 | 40.61 | 0.00 | 121.00 |
| yaw-east-pos | 164 | 148 | 0.902 | 13.99 | 1.00 | 54.00 |
| yaw-north-pos | 164 | 136 | 0.829 | 3.81 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 587
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3649

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T03:40:13+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-15T03:42:50+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-15T03:44:43+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T03:46:36+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T03:48:26+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-15T03:51:03+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T03:52:53+0900 | yaw-east-neg-r1 | success | true | 100 |
| 2026-06-15T03:56:22+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T03:59:13+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-15T04:01:05+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-15T04:03:00+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-15T04:05:37+0900 | fast-east-r1 | success | true | 5 |

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
4039446 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4056831 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
