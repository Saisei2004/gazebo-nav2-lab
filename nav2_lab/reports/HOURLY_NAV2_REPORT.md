# Hourly Nav2 Report

- generated_at: 2026-06-12T01:07:01+09:00
- total_trials: 2220
- latest_git: 784f766 hourly nav2 report 2026-06-12 00:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 19 | 18 | 0.947 | 5.21 | 2.00 | 7.00 |
| baseline-north-control | 20 | 19 | 0.950 | 42.85 | 3.00 | 50.00 |
| baseline-smoke-control | 19 | 17 | 0.895 | 3.42 | 1.00 | 4.00 |
| fast-east | 38 | 31 | 0.816 | 4.61 | 1.00 | 7.00 |
| fast-north | 38 | 32 | 0.842 | 39.89 | 0.00 | 50.00 |
| relaxed-north | 38 | 33 | 0.868 | 36.47 | 1.00 | 50.00 |
| relaxed-smoke | 38 | 33 | 0.868 | 3.42 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 19 | 17 | 0.895 | 51.89 | 1.00 | 121.00 |
| yaw-east-pos | 19 | 16 | 0.842 | 13.68 | 1.00 | 29.00 |
| yaw-north-pos | 19 | 18 | 0.947 | 4.11 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 313
- failed_goal_timeout: 1
- runner_failed: 10
- success: 1896

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T00:38:21+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T00:40:58+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-12T00:43:35+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T00:45:29+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T00:47:19+0900 | relaxed-north-r1 | success | true | 50 |
| 2026-06-12T00:50:00+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-12T00:52:36+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T00:54:40+0900 | yaw-east-neg-r1 | failed_goal_timeout | false | 121 |
| 2026-06-12T00:58:29+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-12T01:01:23+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T01:03:17+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T01:05:12+0900 | baseline-north-control-r1 | success | true | 48 |

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
2582250 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2594882 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
