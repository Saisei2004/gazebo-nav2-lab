# Hourly Nav2 Report

- generated_at: 2026-06-17T14:07:01+09:00
- total_trials: 5820
- latest_git: be008b2 hourly nav2 report 2026-06-17 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 276 | 250 | 0.906 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 277 | 232 | 0.838 | 38.13 | 1.00 | 50.00 |
| baseline-smoke-control | 276 | 234 | 0.848 | 3.42 | 1.00 | 6.00 |
| fast-east | 554 | 484 | 0.874 | 4.93 | 1.00 | 7.00 |
| fast-north | 552 | 482 | 0.873 | 40.00 | 0.00 | 50.00 |
| relaxed-north | 552 | 475 | 0.861 | 35.17 | 0.00 | 51.00 |
| relaxed-smoke | 552 | 491 | 0.889 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 276 | 231 | 0.837 | 40.84 | 0.00 | 121.00 |
| yaw-east-pos | 276 | 244 | 0.884 | 13.76 | 1.00 | 54.00 |
| yaw-north-pos | 276 | 233 | 0.844 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 781
- failed_goal_timeout: 11
- runner_failed: 10
- success: 5018

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T13:42:29+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-17T13:44:24+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T13:46:16+0900 | relaxed-north-r1 | success | true | 11 |
| 2026-06-17T13:48:16+0900 | relaxed-north-r2 | success | true | 46 |
| 2026-06-17T13:50:52+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-17T13:52:58+0900 | yaw-east-neg-r1 | success | true | 28 |
| 2026-06-17T13:55:15+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-17T13:58:09+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-17T14:00:01+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T14:01:57+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-17T14:04:34+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-17T14:06:28+0900 | fast-east-r2 | success | true | 5 |

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
3025361 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3045226 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
