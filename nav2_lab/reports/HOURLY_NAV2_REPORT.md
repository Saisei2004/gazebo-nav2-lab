# Hourly Nav2 Report

- generated_at: 2026-06-11T16:07:01+09:00
- total_trials: 1982
- latest_git: c1e8eeb hourly nav2 report 2026-06-11 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 2 | 2 | 1.000 | 5.00 | 5.00 | 5.00 |
| baseline-north-control | 3 | 3 | 1.000 | 48.33 | 48.00 | 49.00 |
| baseline-smoke-control | 2 | 1 | 0.500 | 2.50 | 1.00 | 4.00 |
| fast-east | 6 | 4 | 0.667 | 4.33 | 1.00 | 6.00 |
| fast-north | 6 | 4 | 0.667 | 32.17 | 0.00 | 48.00 |
| relaxed-north | 4 | 4 | 1.000 | 40.00 | 17.00 | 48.00 |
| relaxed-smoke | 6 | 5 | 0.833 | 4.00 | 3.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 4 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 2 | 2 | 1.000 | 45.50 | 44.00 | 47.00 |
| yaw-east-pos | 2 | 2 | 1.000 | 17.00 | 13.00 | 21.00 |
| yaw-north-pos | 2 | 2 | 1.000 | 4.50 | 4.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 287
- runner_failed: 4
- success: 1691

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T15:42:16+0900 | yaw-east-pos-r1 | success | true | 21 |
| 2026-06-11T15:44:26+0900 | yaw-east-neg-r1 | success | true | 47 |
| 2026-06-11T15:47:04+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-11T15:49:58+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-11T15:51:52+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-11T15:53:49+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-11T15:56:25+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T15:58:15+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-11T16:00:12+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T16:02:03+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-11T16:04:40+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 3 |
| 2026-06-11T16:06:31+0900 | relaxed-smoke-r2 | success | true | 5 |

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
1381567 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1419489 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
