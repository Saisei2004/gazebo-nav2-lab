# Hourly Nav2 Report

- generated_at: 2026-06-14T07:07:01+09:00
- total_trials: 3685
- latest_git: 71410f4 hourly nav2 report 2026-06-14 06:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 123 | 114 | 0.927 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 124 | 103 | 0.831 | 37.46 | 1.00 | 50.00 |
| baseline-smoke-control | 123 | 107 | 0.870 | 3.50 | 1.00 | 6.00 |
| fast-east | 248 | 210 | 0.847 | 4.85 | 1.00 | 7.00 |
| fast-north | 248 | 212 | 0.855 | 38.98 | 0.00 | 50.00 |
| relaxed-north | 248 | 211 | 0.851 | 35.90 | 1.00 | 50.00 |
| relaxed-smoke | 248 | 216 | 0.871 | 3.30 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 123 | 100 | 0.813 | 40.07 | 0.00 | 121.00 |
| yaw-east-pos | 124 | 109 | 0.879 | 13.91 | 1.00 | 54.00 |
| yaw-north-pos | 123 | 100 | 0.813 | 3.74 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 526
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3144

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T06:41:29+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T06:43:22+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T06:45:18+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T06:47:08+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T06:49:05+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T06:51:01+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-14T06:53:40+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-14T06:56:17+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-14T06:58:09+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-14T07:00:03+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-14T07:02:40+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-14T07:05:18+0900 | yaw-east-pos-r1 | success | true | 17 |

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
1239271 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1295532 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
