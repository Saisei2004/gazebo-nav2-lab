# Hourly Nav2 Report

- generated_at: 2026-06-17T13:07:01+09:00
- total_trials: 5792
- latest_git: 280ebf0 hourly nav2 report 2026-06-17 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 274 | 248 | 0.905 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 275 | 230 | 0.836 | 38.06 | 1.00 | 50.00 |
| baseline-smoke-control | 274 | 232 | 0.847 | 3.42 | 1.00 | 6.00 |
| fast-east | 550 | 480 | 0.873 | 4.92 | 1.00 | 7.00 |
| fast-north | 548 | 479 | 0.874 | 40.03 | 0.00 | 50.00 |
| relaxed-north | 548 | 472 | 0.861 | 35.23 | 0.00 | 51.00 |
| relaxed-smoke | 548 | 487 | 0.889 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 274 | 229 | 0.836 | 40.95 | 0.00 | 121.00 |
| yaw-east-pos | 274 | 242 | 0.883 | 13.75 | 1.00 | 54.00 |
| yaw-north-pos | 274 | 232 | 0.847 | 3.86 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 778
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4993

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T12:41:48+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-17T12:43:41+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T12:45:34+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-17T12:48:11+0900 | relaxed-north-r2 | success | true | 7 |
| 2026-06-17T12:50:07+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-17T12:52:09+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-17T12:54:00+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-17T12:56:56+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-17T12:58:51+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T13:00:46+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-17T13:03:25+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-17T13:05:22+0900 | fast-east-r2 | success | true | 4 |

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
2892756 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2914750 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
