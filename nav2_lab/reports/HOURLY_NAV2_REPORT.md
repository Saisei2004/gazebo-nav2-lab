# Hourly Nav2 Report

- generated_at: 2026-06-12T09:07:01+09:00
- total_trials: 2434
- latest_git: 03b9b69 hourly nav2 report 2026-06-12 08:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 34 | 33 | 0.971 | 5.44 | 2.00 | 7.00 |
| baseline-north-control | 35 | 32 | 0.914 | 41.43 | 1.00 | 50.00 |
| baseline-smoke-control | 34 | 30 | 0.882 | 3.29 | 1.00 | 4.00 |
| fast-east | 70 | 57 | 0.814 | 4.61 | 1.00 | 7.00 |
| fast-north | 70 | 61 | 0.871 | 40.16 | 0.00 | 50.00 |
| relaxed-north | 68 | 59 | 0.868 | 38.18 | 1.00 | 50.00 |
| relaxed-smoke | 68 | 57 | 0.838 | 3.34 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 34 | 29 | 0.853 | 51.26 | 0.00 | 121.00 |
| yaw-east-pos | 34 | 30 | 0.882 | 13.71 | 1.00 | 29.00 |
| yaw-north-pos | 34 | 30 | 0.882 | 4.00 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 342
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2080

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T08:41:15+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-12T08:43:52+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T08:45:42+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-12T08:47:46+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-12T08:49:36+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T08:52:26+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-12T08:54:19+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-12T08:56:14+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-12T08:58:51+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T09:00:46+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-12T09:02:41+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T09:05:19+0900 | fast-north-r2 | success | true | 47 |

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
3612972 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3645401 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
