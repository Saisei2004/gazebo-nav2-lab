# Hourly Nav2 Report

- generated_at: 2026-06-15T09:07:01+09:00
- total_trials: 4389
- latest_git: ee1b462 hourly nav2 report 2026-06-15 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 174 | 159 | 0.914 | 5.14 | 1.00 | 8.00 |
| baseline-north-control | 174 | 143 | 0.822 | 37.59 | 1.00 | 50.00 |
| baseline-smoke-control | 174 | 150 | 0.862 | 3.46 | 1.00 | 6.00 |
| fast-east | 348 | 297 | 0.853 | 4.85 | 1.00 | 7.00 |
| fast-north | 348 | 300 | 0.862 | 39.37 | 0.00 | 50.00 |
| relaxed-north | 348 | 299 | 0.859 | 35.71 | 1.00 | 51.00 |
| relaxed-smoke | 348 | 309 | 0.888 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 174 | 145 | 0.833 | 39.84 | 0.00 | 121.00 |
| yaw-east-pos | 174 | 155 | 0.891 | 13.83 | 1.00 | 54.00 |
| yaw-north-pos | 174 | 145 | 0.833 | 3.82 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 610
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3764

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T08:41:33+0900 | fast-east-r2 | success | true | 7 |
| 2026-06-15T08:43:29+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-15T08:46:08+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-15T08:48:45+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-15T08:50:35+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T08:52:28+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-15T08:55:05+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-15T08:57:41+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T08:59:33+0900 | yaw-east-neg-r1 | success | true | 21 |
| 2026-06-15T09:01:42+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T09:04:36+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-15T09:06:28+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 2 |

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
517040 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
524042 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
