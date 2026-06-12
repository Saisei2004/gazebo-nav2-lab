# Hourly Nav2 Report

- generated_at: 2026-06-12T11:07:01+09:00
- total_trials: 2489
- latest_git: 85d6dc8 hourly nav2 report 2026-06-12 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 38 | 35 | 0.921 | 5.26 | 1.00 | 7.00 |
| baseline-north-control | 39 | 35 | 0.897 | 40.87 | 1.00 | 50.00 |
| baseline-smoke-control | 38 | 34 | 0.895 | 3.29 | 1.00 | 4.00 |
| fast-east | 78 | 64 | 0.821 | 4.65 | 1.00 | 7.00 |
| fast-north | 77 | 66 | 0.857 | 39.65 | 0.00 | 50.00 |
| relaxed-north | 76 | 66 | 0.868 | 38.37 | 1.00 | 50.00 |
| relaxed-smoke | 76 | 64 | 0.842 | 3.36 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 38 | 31 | 0.816 | 48.05 | 0.00 | 121.00 |
| yaw-east-pos | 38 | 34 | 0.895 | 13.82 | 1.00 | 29.00 |
| yaw-north-pos | 38 | 32 | 0.842 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 354
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2123

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T10:42:21+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-12T10:44:14+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-12T10:46:49+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-12T10:49:26+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-12T10:51:31+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T10:53:20+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T10:56:10+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-12T10:58:03+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T10:59:53+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T11:01:43+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-12T11:03:37+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T11:05:34+0900 | fast-north-r1 | success | true | 47 |

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
3883796 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3907972 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
