# Hourly Nav2 Report

- generated_at: 2026-06-15T10:07:01+09:00
- total_trials: 4415
- latest_git: 9a952c8 hourly nav2 report 2026-06-15 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 175 | 159 | 0.909 | 5.13 | 1.00 | 8.00 |
| baseline-north-control | 176 | 145 | 0.824 | 37.72 | 1.00 | 50.00 |
| baseline-smoke-control | 175 | 151 | 0.863 | 3.46 | 1.00 | 6.00 |
| fast-east | 352 | 301 | 0.855 | 4.86 | 1.00 | 7.00 |
| fast-north | 352 | 303 | 0.861 | 39.34 | 0.00 | 50.00 |
| relaxed-north | 352 | 303 | 0.861 | 35.85 | 1.00 | 51.00 |
| relaxed-smoke | 352 | 313 | 0.889 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 176 | 147 | 0.835 | 39.97 | 0.00 | 121.00 |
| yaw-east-pos | 176 | 157 | 0.892 | 13.84 | 1.00 | 54.00 |
| yaw-north-pos | 176 | 147 | 0.835 | 3.82 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 612
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3788

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T09:39:55+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-15T09:42:33+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-15T09:44:29+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T09:46:25+0900 | fast-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-15T09:48:17+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-15T09:50:55+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-15T09:52:51+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-15T09:54:45+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-15T09:57:23+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-15T10:00:01+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-15T10:02:05+0900 | yaw-east-neg-r1 | success | true | 81 |
| 2026-06-15T10:05:17+0900 | yaw-north-pos-r1 | success | true | 4 |

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
589299 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
657046 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
