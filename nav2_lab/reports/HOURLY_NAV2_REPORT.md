# Hourly Nav2 Report

- generated_at: 2026-06-12T02:07:01+09:00
- total_trials: 2247
- latest_git: 7967171 hourly nav2 report 2026-06-12 01:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 21 | 20 | 0.952 | 5.24 | 2.00 | 7.00 |
| baseline-north-control | 21 | 20 | 0.952 | 43.14 | 3.00 | 50.00 |
| baseline-smoke-control | 21 | 19 | 0.905 | 3.43 | 1.00 | 4.00 |
| fast-east | 42 | 33 | 0.786 | 4.45 | 1.00 | 7.00 |
| fast-north | 42 | 36 | 0.857 | 40.05 | 0.00 | 50.00 |
| relaxed-north | 42 | 36 | 0.857 | 36.45 | 1.00 | 50.00 |
| relaxed-smoke | 42 | 36 | 0.857 | 3.36 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 21 | 19 | 0.905 | 49.81 | 1.00 | 121.00 |
| yaw-east-pos | 21 | 18 | 0.857 | 13.71 | 1.00 | 29.00 |
| yaw-north-pos | 21 | 20 | 0.952 | 4.14 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 317
- failed_goal_timeout: 1
- runner_failed: 10
- success: 1919

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T01:40:51+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T01:42:45+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T01:45:23+0900 | fast-north-r2 | success | true | 20 |
| 2026-06-12T01:47:33+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T01:49:23+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T01:51:15+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-12T01:53:53+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-12T01:56:30+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T01:58:33+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-12T02:00:39+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T02:03:33+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T02:05:27+0900 | baseline-east-control-r1 | success | true | 6 |

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
2718092 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2725752 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
