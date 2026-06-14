# Hourly Nav2 Report

- generated_at: 2026-06-14T16:07:01+09:00
- total_trials: 3929
- latest_git: fee1444 hourly nav2 report 2026-06-14 15:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 141 | 131 | 0.929 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 142 | 119 | 0.838 | 38.18 | 1.00 | 50.00 |
| baseline-smoke-control | 141 | 122 | 0.865 | 3.50 | 1.00 | 6.00 |
| fast-east | 283 | 242 | 0.855 | 4.88 | 1.00 | 7.00 |
| fast-north | 282 | 240 | 0.851 | 38.90 | 0.00 | 50.00 |
| relaxed-north | 282 | 241 | 0.855 | 35.65 | 1.00 | 50.00 |
| relaxed-smoke | 282 | 248 | 0.879 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 141 | 114 | 0.809 | 39.31 | 0.00 | 121.00 |
| yaw-east-pos | 141 | 126 | 0.894 | 13.97 | 1.00 | 54.00 |
| yaw-north-pos | 141 | 116 | 0.823 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 553
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3361

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T15:40:13+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-14T15:42:50+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T15:44:44+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T15:46:37+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-14T15:49:13+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-14T15:51:50+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-14T15:53:55+0900 | yaw-east-neg-r1 | success | true | 66 |
| 2026-06-14T15:56:51+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-14T15:59:44+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-14T16:01:38+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T16:03:34+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T16:05:24+0900 | fast-east-r1 | failed_goal_rc_0 | false | 2 |

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
2463107 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2478989 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
