# Hourly Nav2 Report

- generated_at: 2026-06-14T08:07:01+09:00
- total_trials: 3714
- latest_git: 8cc040a hourly nav2 report 2026-06-14 07:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 125 | 115 | 0.920 | 5.17 | 1.00 | 7.00 |
| baseline-north-control | 126 | 104 | 0.825 | 37.25 | 1.00 | 50.00 |
| baseline-smoke-control | 125 | 109 | 0.872 | 3.51 | 1.00 | 6.00 |
| fast-east | 252 | 214 | 0.849 | 4.86 | 1.00 | 7.00 |
| fast-north | 252 | 213 | 0.845 | 38.58 | 0.00 | 50.00 |
| relaxed-north | 252 | 215 | 0.853 | 35.77 | 1.00 | 50.00 |
| relaxed-smoke | 252 | 220 | 0.873 | 3.31 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 126 | 102 | 0.810 | 39.45 | 0.00 | 121.00 |
| yaw-east-pos | 126 | 111 | 0.881 | 13.92 | 1.00 | 54.00 |
| yaw-north-pos | 125 | 101 | 0.808 | 3.72 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 533
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3166

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T07:43:59+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T07:45:54+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-14T07:48:31+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T07:50:28+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T07:52:22+0900 | fast-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T07:54:15+0900 | fast-north-r2 | failed_goal_rc_0 | false | 4 |
| 2026-06-14T07:56:07+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-14T07:58:01+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T07:59:53+0900 | relaxed-north-r1 | success | true | 10 |
| 2026-06-14T08:01:53+0900 | relaxed-north-r2 | success | true | 8 |
| 2026-06-14T08:03:51+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T08:05:55+0900 | yaw-east-neg-r1 | success | true | 20 |

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
1372012 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1427342 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
