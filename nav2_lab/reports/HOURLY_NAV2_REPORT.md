# Hourly Nav2 Report

- generated_at: 2026-06-16T05:07:01+09:00
- total_trials: 4931
- latest_git: 9c7a2cd hourly nav2 report 2026-06-16 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 212 | 191 | 0.901 | 5.09 | 1.00 | 8.00 |
| baseline-north-control | 213 | 174 | 0.817 | 37.31 | 1.00 | 50.00 |
| baseline-smoke-control | 212 | 181 | 0.854 | 3.42 | 1.00 | 6.00 |
| fast-east | 426 | 370 | 0.869 | 4.90 | 1.00 | 7.00 |
| fast-north | 426 | 367 | 0.862 | 39.36 | 0.00 | 50.00 |
| relaxed-north | 426 | 363 | 0.852 | 35.19 | 1.00 | 51.00 |
| relaxed-smoke | 426 | 379 | 0.890 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 212 | 175 | 0.825 | 40.65 | 0.00 | 121.00 |
| yaw-east-pos | 213 | 189 | 0.887 | 13.85 | 1.00 | 54.00 |
| yaw-north-pos | 212 | 179 | 0.844 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 683
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4230

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T04:42:22+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T04:44:15+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T04:46:09+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T04:48:01+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T04:49:55+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T04:51:51+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T04:54:28+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T04:57:06+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T04:58:58+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-16T05:00:52+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-16T05:03:29+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-16T05:06:05+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |

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
2973885 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3028515 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
