# Hourly Nav2 Report

- generated_at: 2026-06-13T14:07:01+09:00
- total_trials: 3224
- latest_git: 3498e0e hourly nav2 report 2026-06-13 13:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 90 | 83 | 0.922 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 91 | 75 | 0.824 | 36.99 | 1.00 | 50.00 |
| baseline-smoke-control | 90 | 79 | 0.878 | 3.44 | 1.00 | 6.00 |
| fast-east | 182 | 152 | 0.835 | 4.77 | 1.00 | 7.00 |
| fast-north | 182 | 158 | 0.868 | 39.53 | 0.00 | 50.00 |
| relaxed-north | 182 | 150 | 0.824 | 35.02 | 1.00 | 50.00 |
| relaxed-smoke | 182 | 160 | 0.879 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 91 | 74 | 0.813 | 42.67 | 0.00 | 121.00 |
| yaw-east-pos | 91 | 78 | 0.857 | 13.56 | 1.00 | 54.00 |
| yaw-north-pos | 90 | 71 | 0.789 | 3.67 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 468
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2742

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T13:42:38+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T13:44:29+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-13T13:47:07+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T13:49:02+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T13:50:56+0900 | fast-north-r1 | success | true | 33 |
| 2026-06-13T13:53:19+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T13:55:09+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T13:57:01+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T13:58:54+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-13T14:01:32+0900 | relaxed-north-r2 | success | true | 10 |
| 2026-06-13T14:03:32+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T14:05:36+0900 | yaw-east-neg-r1 | success | true | 23 |

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
3196190 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3254232 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
