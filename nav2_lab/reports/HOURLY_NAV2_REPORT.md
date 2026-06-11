# Hourly Nav2 Report

- generated_at: 2026-06-12T04:07:01+09:00
- total_trials: 2300
- latest_git: 4547da3 hourly nav2 report 2026-06-12 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 24 | 23 | 0.958 | 5.33 | 2.00 | 7.00 |
| baseline-north-control | 25 | 24 | 0.960 | 43.92 | 3.00 | 50.00 |
| baseline-smoke-control | 24 | 22 | 0.917 | 3.38 | 1.00 | 4.00 |
| fast-east | 50 | 41 | 0.820 | 4.62 | 1.00 | 7.00 |
| fast-north | 50 | 43 | 0.860 | 40.40 | 0.00 | 50.00 |
| relaxed-north | 50 | 42 | 0.840 | 36.44 | 1.00 | 50.00 |
| relaxed-smoke | 50 | 42 | 0.840 | 3.28 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 25 | 23 | 0.920 | 49.72 | 1.00 | 121.00 |
| yaw-east-pos | 25 | 22 | 0.880 | 13.84 | 1.00 | 29.00 |
| yaw-north-pos | 24 | 23 | 0.958 | 4.17 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 322
- failed_goal_timeout: 1
- runner_failed: 10
- success: 1967

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T03:39:47+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T03:41:41+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-12T03:44:19+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T03:46:13+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T03:48:07+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T03:50:44+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T03:53:23+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T03:55:18+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T03:57:10+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-12T03:59:48+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T04:02:26+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T04:04:30+0900 | yaw-east-neg-r1 | success | true | 19 |

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
2924610 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2987997 bash ./scripts/run_nav2_trial.sh
2989074 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
