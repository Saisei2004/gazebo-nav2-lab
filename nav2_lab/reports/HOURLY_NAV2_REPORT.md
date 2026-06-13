# Hourly Nav2 Report

- generated_at: 2026-06-14T06:07:01+09:00
- total_trials: 3659
- latest_git: 42448c2 hourly nav2 report 2026-06-14 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 121 | 112 | 0.926 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 122 | 102 | 0.836 | 37.66 | 1.00 | 50.00 |
| baseline-smoke-control | 121 | 105 | 0.868 | 3.50 | 1.00 | 6.00 |
| fast-east | 244 | 206 | 0.844 | 4.84 | 1.00 | 7.00 |
| fast-north | 244 | 208 | 0.852 | 38.83 | 0.00 | 50.00 |
| relaxed-north | 244 | 207 | 0.848 | 35.70 | 1.00 | 50.00 |
| relaxed-smoke | 244 | 212 | 0.869 | 3.30 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 122 | 99 | 0.811 | 39.55 | 0.00 | 121.00 |
| yaw-east-pos | 122 | 107 | 0.877 | 13.89 | 1.00 | 54.00 |
| yaw-north-pos | 122 | 99 | 0.811 | 3.74 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 525
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3119

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T05:41:27+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-14T05:44:03+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-14T05:45:57+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T05:47:52+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T05:49:41+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-14T05:52:19+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-14T05:54:11+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-14T05:56:05+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-14T05:58:42+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-14T06:01:18+0900 | yaw-east-pos-r1 | success | true | 12 |
| 2026-06-14T06:03:19+0900 | yaw-east-neg-r1 | success | true | 21 |
| 2026-06-14T06:05:31+0900 | yaw-north-pos-r1 | success | true | 4 |

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
1099629 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1164045 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
