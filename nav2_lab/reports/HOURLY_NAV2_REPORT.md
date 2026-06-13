# Hourly Nav2 Report

- generated_at: 2026-06-13T10:07:01+09:00
- total_trials: 3114
- latest_git: f2018db hourly nav2 report 2026-06-13 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 82 | 76 | 0.927 | 5.23 | 1.00 | 7.00 |
| baseline-north-control | 83 | 69 | 0.831 | 37.06 | 1.00 | 50.00 |
| baseline-smoke-control | 83 | 73 | 0.880 | 3.43 | 1.00 | 6.00 |
| fast-east | 166 | 140 | 0.843 | 4.79 | 1.00 | 7.00 |
| fast-north | 166 | 145 | 0.873 | 40.08 | 0.00 | 50.00 |
| relaxed-north | 166 | 139 | 0.837 | 35.62 | 1.00 | 50.00 |
| relaxed-smoke | 166 | 146 | 0.880 | 3.36 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 83 | 66 | 0.795 | 42.80 | 0.00 | 121.00 |
| yaw-east-pos | 83 | 70 | 0.843 | 13.36 | 1.00 | 54.00 |
| yaw-north-pos | 83 | 65 | 0.783 | 3.64 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 449
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2651

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T09:41:08+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T09:43:04+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-13T09:44:59+0900 | fast-north-r1 | failed_goal_rc_0 | false | 3 |
| 2026-06-13T09:46:51+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-13T09:49:28+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T09:51:22+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T09:53:16+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-13T09:55:54+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T09:57:45+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T09:59:48+0900 | yaw-east-neg-r1 | success | true | 66 |
| 2026-06-13T10:02:44+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T10:05:39+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |

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
2726701 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2729842 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
