# Hourly Nav2 Report

- generated_at: 2026-06-15T00:07:01+09:00
- total_trials: 4145
- latest_git: 431b85b hourly nav2 report 2026-06-14 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 156 | 145 | 0.929 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 157 | 131 | 0.834 | 38.17 | 1.00 | 50.00 |
| baseline-smoke-control | 156 | 134 | 0.859 | 3.46 | 1.00 | 6.00 |
| fast-east | 314 | 266 | 0.847 | 4.83 | 1.00 | 7.00 |
| fast-north | 314 | 270 | 0.860 | 39.24 | 0.00 | 50.00 |
| relaxed-north | 313 | 270 | 0.863 | 35.88 | 1.00 | 50.00 |
| relaxed-smoke | 314 | 277 | 0.882 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 156 | 129 | 0.827 | 39.29 | 0.00 | 121.00 |
| yaw-east-pos | 156 | 141 | 0.904 | 14.04 | 1.00 | 54.00 |
| yaw-north-pos | 156 | 129 | 0.827 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 576
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3554

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T23:42:22+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-14T23:44:28+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T23:47:22+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T23:49:15+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T23:51:10+0900 | baseline-north-control-r1 | success | true | 38 |
| 2026-06-14T23:53:37+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T23:55:27+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T23:57:17+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T23:59:54+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-15T00:02:32+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-15T00:04:27+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T00:06:20+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |

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
3487216 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3530912 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
