# Hourly Nav2 Report

- generated_at: 2026-06-14T19:07:01+09:00
- total_trials: 4010
- latest_git: b080dc7 hourly nav2 report 2026-06-14 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 146 | 136 | 0.932 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 147 | 123 | 0.837 | 38.20 | 1.00 | 50.00 |
| baseline-smoke-control | 147 | 127 | 0.864 | 3.48 | 1.00 | 6.00 |
| fast-east | 294 | 250 | 0.850 | 4.86 | 1.00 | 7.00 |
| fast-north | 294 | 250 | 0.850 | 38.83 | 0.00 | 50.00 |
| relaxed-north | 294 | 253 | 0.861 | 35.79 | 1.00 | 50.00 |
| relaxed-smoke | 294 | 259 | 0.881 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 147 | 120 | 0.816 | 39.65 | 0.00 | 121.00 |
| yaw-east-pos | 147 | 132 | 0.898 | 13.99 | 1.00 | 54.00 |
| yaw-north-pos | 147 | 121 | 0.823 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 562
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3433

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T18:41:41+0900 | fast-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T18:43:32+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T18:45:27+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-14T18:48:04+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T18:49:54+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T18:51:47+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T18:53:39+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-14T18:56:16+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T18:58:54+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T19:00:56+0900 | yaw-east-neg-r1 | success | true | 36 |
| 2026-06-14T19:03:23+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T19:06:16+0900 | baseline-smoke-control-r1 | success | true | 4 |

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
2871971 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2873818 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
