# Hourly Nav2 Report

- generated_at: 2026-06-11T17:07:02+09:00
- total_trials: 2007
- latest_git: 4fe4301 hourly nav2 report 2026-06-11 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 4 | 4 | 1.000 | 5.00 | 5.00 | 5.00 |
| baseline-north-control | 4 | 4 | 1.000 | 48.50 | 48.00 | 49.00 |
| baseline-smoke-control | 4 | 3 | 0.750 | 3.00 | 1.00 | 4.00 |
| fast-east | 8 | 6 | 0.750 | 4.62 | 1.00 | 6.00 |
| fast-north | 8 | 6 | 0.750 | 36.12 | 0.00 | 48.00 |
| relaxed-north | 8 | 8 | 1.000 | 39.00 | 11.00 | 48.00 |
| relaxed-smoke | 8 | 6 | 0.750 | 3.62 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 8 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 4 | 4 | 1.000 | 34.00 | 18.00 | 47.00 |
| yaw-east-pos | 4 | 2 | 0.500 | 9.00 | 1.00 | 21.00 |
| yaw-north-pos | 4 | 4 | 1.000 | 4.25 | 4.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 290
- runner_failed: 8
- success: 1709

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T16:39:37+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-11T16:42:15+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T16:44:05+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-11T16:45:58+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-11T16:48:34+0900 | relaxed-north-r2 | success | true | 11 |
| 2026-06-11T16:50:34+0900 | stability-smoke-r1 | runner_failed | false |  |
| 2026-06-11T16:53:41+0900 | stability-smoke-r2 | runner_failed | false |  |
| 2026-06-11T16:56:45+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T16:58:35+0900 | yaw-east-neg-r1 | success | true | 27 |
| 2026-06-11T17:00:52+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-11T17:03:46+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-11T17:05:39+0900 | baseline-east-control-r1 | success | true | 5 |

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
1542526 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1549987 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
