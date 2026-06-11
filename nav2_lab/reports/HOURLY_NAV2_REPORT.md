# Hourly Nav2 Report

- generated_at: 2026-06-11T20:07:01+09:00
- total_trials: 2086
- latest_git: 5b4afe5 hourly nav2 report 2026-06-11 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 9 | 9 | 1.000 | 5.22 | 5.00 | 6.00 |
| baseline-north-control | 10 | 10 | 1.000 | 42.00 | 14.00 | 49.00 |
| baseline-smoke-control | 9 | 7 | 0.778 | 3.11 | 1.00 | 4.00 |
| fast-east | 20 | 16 | 0.800 | 4.55 | 1.00 | 6.00 |
| fast-north | 20 | 15 | 0.750 | 36.50 | 0.00 | 50.00 |
| relaxed-north | 18 | 18 | 1.000 | 41.22 | 7.00 | 49.00 |
| relaxed-smoke | 20 | 18 | 0.900 | 3.60 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 9 | 9 | 1.000 | 55.56 | 18.00 | 115.00 |
| yaw-east-pos | 9 | 6 | 0.667 | 10.22 | 1.00 | 21.00 |
| yaw-north-pos | 9 | 8 | 0.889 | 3.89 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 298
- runner_failed: 10
- success: 1778

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T19:39:45+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-11T19:41:49+0900 | yaw-east-neg-r1 | success | true | 115 |
| 2026-06-11T19:45:34+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-11T19:48:28+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-11T19:50:20+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-11T19:52:15+0900 | baseline-north-control-r1 | success | true | 19 |
| 2026-06-11T19:54:23+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T19:56:17+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-11T19:58:11+0900 | fast-north-r1 | success | true | 50 |
| 2026-06-11T20:00:49+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-11T20:03:26+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-11T20:05:18+0900 | relaxed-smoke-r2 | success | true | 4 |

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
1897153 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1938414 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
