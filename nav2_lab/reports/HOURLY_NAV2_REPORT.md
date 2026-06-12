# Hourly Nav2 Report

- generated_at: 2026-06-12T12:07:01+09:00
- total_trials: 2516
- latest_git: 914a152 hourly nav2 report 2026-06-12 11:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 40 | 36 | 0.900 | 5.15 | 1.00 | 7.00 |
| baseline-north-control | 41 | 37 | 0.902 | 41.24 | 1.00 | 50.00 |
| baseline-smoke-control | 40 | 35 | 0.875 | 3.23 | 1.00 | 4.00 |
| fast-east | 82 | 68 | 0.829 | 4.70 | 1.00 | 7.00 |
| fast-north | 80 | 68 | 0.850 | 39.38 | 0.00 | 50.00 |
| relaxed-north | 80 | 70 | 0.875 | 38.81 | 1.00 | 50.00 |
| relaxed-smoke | 80 | 68 | 0.850 | 3.40 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 40 | 33 | 0.825 | 47.73 | 0.00 | 121.00 |
| yaw-east-pos | 40 | 34 | 0.850 | 13.20 | 1.00 | 29.00 |
| yaw-north-pos | 40 | 33 | 0.825 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 360
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2144

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T11:41:14+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T11:43:06+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-12T11:45:00+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-12T11:47:37+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-12T11:50:15+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T11:52:05+0900 | yaw-east-neg-r1 | success | true | 65 |
| 2026-06-12T11:55:01+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T11:57:55+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T11:59:47+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T12:01:43+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-12T12:04:22+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T12:06:17+0900 | fast-east-r2 | success | true | 5 |

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
4018911 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4039497 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
