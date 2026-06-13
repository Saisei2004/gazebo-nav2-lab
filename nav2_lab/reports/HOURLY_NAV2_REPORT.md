# Hourly Nav2 Report

- generated_at: 2026-06-13T23:07:01+09:00
- total_trials: 3466
- latest_git: 7c18c57 hourly nav2 report 2026-06-13 22:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 108 | 99 | 0.917 | 5.16 | 1.00 | 7.00 |
| baseline-north-control | 109 | 91 | 0.835 | 37.28 | 1.00 | 50.00 |
| baseline-smoke-control | 108 | 93 | 0.861 | 3.48 | 1.00 | 6.00 |
| fast-east | 216 | 180 | 0.833 | 4.79 | 1.00 | 7.00 |
| fast-north | 216 | 188 | 0.870 | 39.87 | 0.00 | 50.00 |
| relaxed-north | 216 | 183 | 0.847 | 35.99 | 1.00 | 50.00 |
| relaxed-smoke | 216 | 190 | 0.880 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 108 | 88 | 0.815 | 41.53 | 0.00 | 121.00 |
| yaw-east-pos | 108 | 94 | 0.870 | 13.69 | 1.00 | 54.00 |
| yaw-north-pos | 108 | 85 | 0.787 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 498
- failed_goal_timeout: 5
- runner_failed: 10
- success: 2953

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T22:41:47+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T22:43:36+0900 | fast-north-r2 | success | true | 18 |
| 2026-06-13T22:45:43+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T22:47:36+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T22:49:28+0900 | relaxed-north-r1 | success | true | 11 |
| 2026-06-13T22:51:29+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T22:54:07+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T22:56:11+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-13T22:58:19+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T23:01:09+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-13T23:03:03+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T23:04:57+0900 | baseline-north-control-r1 | success | true | 49 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
230547 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
243747 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
