# Hourly Nav2 Report

- generated_at: 2026-06-16T06:07:02+09:00
- total_trials: 4958
- latest_git: 2607ce4 hourly nav2 report 2026-06-16 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 214 | 193 | 0.902 | 5.09 | 1.00 | 8.00 |
| baseline-north-control | 215 | 175 | 0.814 | 37.18 | 1.00 | 50.00 |
| baseline-smoke-control | 214 | 182 | 0.850 | 3.41 | 1.00 | 6.00 |
| fast-east | 430 | 374 | 0.870 | 4.91 | 1.00 | 7.00 |
| fast-north | 430 | 371 | 0.863 | 39.45 | 0.00 | 50.00 |
| relaxed-north | 430 | 367 | 0.853 | 35.30 | 1.00 | 51.00 |
| relaxed-smoke | 430 | 381 | 0.886 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 214 | 177 | 0.827 | 40.45 | 0.00 | 121.00 |
| yaw-east-pos | 214 | 190 | 0.888 | 13.86 | 1.00 | 54.00 |
| yaw-north-pos | 214 | 181 | 0.846 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 687
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4253

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T05:40:55+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T05:43:48+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T05:45:39+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T05:47:35+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-16T05:50:13+0900 | fast-east-r1 | success | true | 7 |
| 2026-06-16T05:52:08+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T05:54:02+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T05:56:39+0900 | fast-north-r2 | success | true | 50 |
| 2026-06-16T05:59:17+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T06:01:10+0900 | relaxed-smoke-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T06:03:00+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-16T06:05:37+0900 | relaxed-north-r2 | success | true | 48 |

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
3108180 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3159113 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
