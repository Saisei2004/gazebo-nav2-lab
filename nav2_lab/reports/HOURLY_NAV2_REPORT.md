# Hourly Nav2 Report

- generated_at: 2026-06-16T22:07:01+09:00
- total_trials: 5388
- latest_git: 6ab958a hourly nav2 report 2026-06-16 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 245 | 220 | 0.898 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 246 | 204 | 0.829 | 37.75 | 1.00 | 50.00 |
| baseline-smoke-control | 245 | 208 | 0.849 | 3.44 | 1.00 | 6.00 |
| fast-east | 492 | 426 | 0.866 | 4.90 | 1.00 | 7.00 |
| fast-north | 492 | 428 | 0.870 | 39.70 | 0.00 | 50.00 |
| relaxed-north | 490 | 420 | 0.857 | 35.14 | 1.00 | 51.00 |
| relaxed-smoke | 490 | 435 | 0.888 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 245 | 205 | 0.837 | 41.48 | 0.00 | 121.00 |
| yaw-east-pos | 245 | 215 | 0.878 | 13.70 | 1.00 | 54.00 |
| yaw-north-pos | 245 | 208 | 0.849 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 737
- failed_goal_timeout: 10
- runner_failed: 10
- success: 4631

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T21:41:09+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T21:43:47+0900 | relaxed-north-r2 | success | true | 21 |
| 2026-06-16T21:45:56+0900 | yaw-east-pos-r1 | success | true | 13 |
| 2026-06-16T21:47:59+0900 | yaw-east-neg-r1 | success | true | 20 |
| 2026-06-16T21:50:08+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T21:53:02+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T21:54:54+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T21:56:52+0900 | baseline-north-control-r1 | success | true | 10 |
| 2026-06-16T21:58:51+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-16T22:00:45+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T22:02:41+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T22:05:19+0900 | fast-north-r2 | success | true | 48 |

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
912058 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
943082 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
