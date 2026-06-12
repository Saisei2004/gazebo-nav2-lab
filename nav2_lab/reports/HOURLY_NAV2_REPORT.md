# Hourly Nav2 Report

- generated_at: 2026-06-12T13:07:01+09:00
- total_trials: 2544
- latest_git: 1a64420 hourly nav2 report 2026-06-12 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 42 | 38 | 0.905 | 5.14 | 1.00 | 7.00 |
| baseline-north-control | 43 | 38 | 0.884 | 40.47 | 1.00 | 50.00 |
| baseline-smoke-control | 42 | 37 | 0.881 | 3.29 | 1.00 | 5.00 |
| fast-east | 86 | 72 | 0.837 | 4.72 | 1.00 | 7.00 |
| fast-north | 84 | 72 | 0.857 | 39.33 | 0.00 | 50.00 |
| relaxed-north | 84 | 73 | 0.869 | 37.95 | 1.00 | 50.00 |
| relaxed-smoke | 84 | 72 | 0.857 | 3.40 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 42 | 33 | 0.786 | 45.52 | 0.00 | 121.00 |
| yaw-east-pos | 42 | 36 | 0.857 | 13.29 | 1.00 | 29.00 |
| yaw-north-pos | 42 | 35 | 0.833 | 3.81 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 364
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2168

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T12:42:59+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-12T12:44:53+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-12T12:46:48+0900 | relaxed-north-r1 | success | true | 14 |
| 2026-06-12T12:48:51+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T12:51:28+0900 | yaw-east-pos-r1 | success | true | 13 |
| 2026-06-12T12:53:30+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T12:55:22+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-12T12:58:17+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-12T13:00:13+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-12T13:02:08+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T13:03:59+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T13:05:54+0900 | fast-east-r2 | success | true | 5 |

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
4150695 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4170242 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
