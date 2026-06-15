# Hourly Nav2 Report

- generated_at: 2026-06-16T08:07:01+09:00
- total_trials: 5012
- latest_git: 378d756 hourly nav2 report 2026-06-16 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 218 | 196 | 0.899 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 219 | 178 | 0.813 | 37.16 | 1.00 | 50.00 |
| baseline-smoke-control | 218 | 185 | 0.849 | 3.41 | 1.00 | 6.00 |
| fast-east | 438 | 380 | 0.868 | 4.90 | 1.00 | 7.00 |
| fast-north | 438 | 378 | 0.863 | 39.50 | 0.00 | 50.00 |
| relaxed-north | 436 | 372 | 0.853 | 35.22 | 1.00 | 51.00 |
| relaxed-smoke | 438 | 388 | 0.886 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 218 | 181 | 0.830 | 40.72 | 0.00 | 121.00 |
| yaw-east-pos | 218 | 194 | 0.890 | 13.88 | 1.00 | 54.00 |
| yaw-north-pos | 218 | 185 | 0.849 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 695
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4299

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T07:41:39+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-16T07:43:43+0900 | yaw-east-neg-r1 | success | true | 34 |
| 2026-06-16T07:46:06+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-16T07:49:00+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T07:50:52+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T07:52:43+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-16T07:55:22+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T07:57:16+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T07:59:06+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T08:01:44+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T08:04:23+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-16T08:06:17+0900 | relaxed-smoke-r2 | success | true | 4 |

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
3381779 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3421610 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
