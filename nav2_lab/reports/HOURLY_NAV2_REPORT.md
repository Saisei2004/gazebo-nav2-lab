# Hourly Nav2 Report

- generated_at: 2026-06-14T00:07:01+09:00
- total_trials: 3494
- latest_git: ee2fbab hourly nav2 report 2026-06-13 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 110 | 101 | 0.918 | 5.16 | 1.00 | 7.00 |
| baseline-north-control | 111 | 92 | 0.829 | 37.05 | 1.00 | 50.00 |
| baseline-smoke-control | 110 | 94 | 0.855 | 3.45 | 1.00 | 6.00 |
| fast-east | 220 | 184 | 0.836 | 4.80 | 1.00 | 7.00 |
| fast-north | 220 | 190 | 0.864 | 39.59 | 0.00 | 50.00 |
| relaxed-north | 220 | 186 | 0.845 | 35.84 | 1.00 | 50.00 |
| relaxed-smoke | 220 | 194 | 0.882 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 110 | 90 | 0.818 | 41.86 | 0.00 | 121.00 |
| yaw-east-pos | 110 | 96 | 0.873 | 13.73 | 1.00 | 54.00 |
| yaw-north-pos | 110 | 87 | 0.791 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 503
- failed_goal_timeout: 5
- runner_failed: 10
- success: 2976

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T23:40:38+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T23:42:28+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T23:45:05+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T23:46:58+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T23:48:52+0900 | relaxed-north-r1 | success | true | 14 |
| 2026-06-13T23:50:56+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T23:53:33+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T23:55:37+0900 | yaw-east-neg-r1 | success | true | 98 |
| 2026-06-13T23:59:05+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T00:01:58+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T00:03:50+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T00:05:45+0900 | baseline-north-control-r1 | success | true | 48 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
364150 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
375851 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
