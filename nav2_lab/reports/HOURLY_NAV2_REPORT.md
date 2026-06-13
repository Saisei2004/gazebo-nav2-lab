# Hourly Nav2 Report

- generated_at: 2026-06-13T13:07:01+09:00
- total_trials: 3196
- latest_git: 7d6002f hourly nav2 report 2026-06-13 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 88 | 82 | 0.932 | 5.27 | 1.00 | 7.00 |
| baseline-north-control | 89 | 73 | 0.820 | 36.74 | 1.00 | 50.00 |
| baseline-smoke-control | 88 | 77 | 0.875 | 3.42 | 1.00 | 6.00 |
| fast-east | 178 | 148 | 0.831 | 4.76 | 1.00 | 7.00 |
| fast-north | 178 | 155 | 0.871 | 39.69 | 0.00 | 50.00 |
| relaxed-north | 178 | 148 | 0.831 | 35.47 | 1.00 | 50.00 |
| relaxed-smoke | 178 | 156 | 0.876 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 89 | 72 | 0.809 | 42.70 | 0.00 | 121.00 |
| yaw-east-pos | 89 | 76 | 0.854 | 13.53 | 1.00 | 54.00 |
| yaw-north-pos | 88 | 69 | 0.784 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 464
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2718

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T12:42:11+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T12:44:05+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T12:45:55+0900 | fast-east-r1 | failed_goal_rc_0 | false | 3 |
| 2026-06-13T12:47:47+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-13T12:49:42+0900 | fast-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T12:51:32+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T12:54:12+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T12:56:04+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-13T12:57:59+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T12:59:49+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T13:02:26+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-13T13:04:30+0900 | yaw-east-neg-r1 | success | true | 47 |

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
3063969 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3122353 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
