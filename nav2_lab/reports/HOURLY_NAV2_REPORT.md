# Hourly Nav2 Report

- generated_at: 2026-06-16T19:07:02+09:00
- total_trials: 5307
- latest_git: 1911e56 hourly nav2 report 2026-06-16 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 239 | 214 | 0.895 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 240 | 199 | 0.829 | 37.84 | 1.00 | 50.00 |
| baseline-smoke-control | 239 | 203 | 0.849 | 3.44 | 1.00 | 6.00 |
| fast-east | 480 | 416 | 0.867 | 4.90 | 1.00 | 7.00 |
| fast-north | 480 | 417 | 0.869 | 39.59 | 0.00 | 50.00 |
| relaxed-north | 479 | 409 | 0.854 | 35.13 | 1.00 | 51.00 |
| relaxed-smoke | 480 | 427 | 0.890 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 239 | 200 | 0.837 | 41.49 | 0.00 | 121.00 |
| yaw-east-pos | 239 | 212 | 0.887 | 13.85 | 1.00 | 54.00 |
| yaw-north-pos | 239 | 204 | 0.854 | 3.89 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 725
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4563

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T18:41:23+0900 | yaw-east-neg-r1 | success | true | 22 |
| 2026-06-16T18:43:34+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-16T18:46:28+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T18:48:22+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T18:50:16+0900 | baseline-north-control-r1 | success | true | 16 |
| 2026-06-16T18:52:22+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T18:54:16+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T18:56:10+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T18:58:47+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T19:01:25+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T19:03:17+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T19:05:09+0900 | relaxed-north-r1 | success | true | 48 |

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
504213 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
549970 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
