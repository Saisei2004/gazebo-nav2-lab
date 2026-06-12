# Hourly Nav2 Report

- generated_at: 2026-06-12T21:07:01+09:00
- total_trials: 2759
- latest_git: 298b671 hourly nav2 report 2026-06-12 20:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 57 | 53 | 0.930 | 5.26 | 1.00 | 7.00 |
| baseline-north-control | 58 | 52 | 0.897 | 40.52 | 1.00 | 50.00 |
| baseline-smoke-control | 57 | 50 | 0.877 | 3.33 | 1.00 | 5.00 |
| fast-east | 116 | 98 | 0.845 | 4.78 | 1.00 | 7.00 |
| fast-north | 116 | 103 | 0.888 | 41.08 | 0.00 | 50.00 |
| relaxed-north | 115 | 98 | 0.852 | 36.90 | 1.00 | 50.00 |
| relaxed-smoke | 116 | 103 | 0.888 | 3.42 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 57 | 43 | 0.754 | 44.74 | 0.00 | 121.00 |
| yaw-east-pos | 57 | 48 | 0.842 | 12.93 | 1.00 | 29.00 |
| yaw-north-pos | 57 | 46 | 0.807 | 3.72 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 390
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2356

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T20:42:10+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T20:44:00+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T20:46:53+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-12T20:48:47+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T20:50:41+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T20:53:18+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T20:55:13+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T20:57:08+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T20:59:45+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T21:02:22+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T21:04:15+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T21:06:07+0900 | relaxed-north-r1 | success | true | 9 |

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
977368 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1021950 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
