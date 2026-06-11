# Hourly Nav2 Report

- generated_at: 2026-06-11T21:07:01+09:00
- total_trials: 2114
- latest_git: c4b4563 hourly nav2 report 2026-06-11 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 11 | 11 | 1.000 | 5.45 | 5.00 | 7.00 |
| baseline-north-control | 12 | 11 | 0.917 | 39.42 | 3.00 | 50.00 |
| baseline-smoke-control | 11 | 9 | 0.818 | 3.27 | 1.00 | 4.00 |
| fast-east | 24 | 18 | 0.750 | 4.29 | 1.00 | 6.00 |
| fast-north | 24 | 19 | 0.792 | 36.96 | 0.00 | 50.00 |
| relaxed-north | 22 | 22 | 1.000 | 40.55 | 7.00 | 49.00 |
| relaxed-smoke | 24 | 21 | 0.875 | 3.54 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 11 | 10 | 0.909 | 47.09 | 1.00 | 115.00 |
| yaw-east-pos | 11 | 8 | 0.727 | 11.27 | 1.00 | 21.00 |
| yaw-north-pos | 11 | 10 | 0.909 | 4.00 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 303
- runner_failed: 10
- success: 1801

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T20:42:13+0900 | yaw-east-pos-r1 | success | true | 18 |
| 2026-06-11T20:44:20+0900 | yaw-east-neg-r1 | success | true | 17 |
| 2026-06-11T20:46:26+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-11T20:49:19+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-11T20:51:14+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-11T20:53:09+0900 | baseline-north-control-r1 | success | true | 50 |
| 2026-06-11T20:55:47+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T20:57:38+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T20:59:29+0900 | fast-north-r1 | success | true | 13 |
| 2026-06-11T21:01:32+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-11T21:04:10+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-11T21:06:03+0900 | relaxed-smoke-r2 | success | true | 4 |

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
2030568 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2069429 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
