# Hourly Nav2 Report

- generated_at: 2026-06-15T17:07:01+09:00
- total_trials: 4606
- latest_git: edc6f08 hourly nav2 report 2026-06-15 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 189 | 169 | 0.894 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 190 | 156 | 0.821 | 37.41 | 1.00 | 50.00 |
| baseline-smoke-control | 189 | 161 | 0.852 | 3.42 | 1.00 | 6.00 |
| fast-east | 380 | 327 | 0.861 | 4.87 | 1.00 | 7.00 |
| fast-north | 380 | 327 | 0.861 | 39.36 | 0.00 | 50.00 |
| relaxed-north | 378 | 324 | 0.857 | 35.79 | 1.00 | 51.00 |
| relaxed-smoke | 380 | 338 | 0.889 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 189 | 157 | 0.831 | 39.57 | 0.00 | 121.00 |
| yaw-east-pos | 189 | 169 | 0.894 | 13.82 | 1.00 | 54.00 |
| yaw-north-pos | 189 | 159 | 0.841 | 3.83 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 641
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3949

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T16:41:23+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-15T16:43:29+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-15T16:45:34+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T16:48:27+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-15T16:50:21+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-15T16:52:15+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-15T16:54:51+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-15T16:56:45+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-15T16:58:40+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-15T17:01:16+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-15T17:03:54+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-15T17:05:46+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 2 |

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
1489049 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1525319 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
