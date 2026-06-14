# Hourly Nav2 Report

- generated_at: 2026-06-14T10:07:01+09:00
- total_trials: 3767
- latest_git: 1c13cf8 hourly nav2 report 2026-06-14 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 129 | 119 | 0.922 | 5.17 | 1.00 | 7.00 |
| baseline-north-control | 130 | 108 | 0.831 | 37.59 | 1.00 | 50.00 |
| baseline-smoke-control | 129 | 113 | 0.876 | 3.52 | 1.00 | 6.00 |
| fast-east | 260 | 221 | 0.850 | 4.86 | 1.00 | 7.00 |
| fast-north | 260 | 220 | 0.846 | 38.68 | 0.00 | 50.00 |
| relaxed-north | 259 | 222 | 0.857 | 35.71 | 1.00 | 50.00 |
| relaxed-smoke | 260 | 228 | 0.877 | 3.31 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 129 | 105 | 0.814 | 39.98 | 0.00 | 121.00 |
| yaw-east-pos | 129 | 114 | 0.884 | 13.93 | 1.00 | 54.00 |
| yaw-north-pos | 129 | 105 | 0.814 | 3.74 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 535
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3217

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T09:40:24+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-14T09:42:33+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-14T09:45:27+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-14T09:47:23+0900 | baseline-east-control-r1 | success | true | 4 |
| 2026-06-14T09:49:17+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T09:51:55+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T09:53:49+0900 | fast-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-14T09:55:39+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T09:58:19+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-14T10:00:56+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-14T10:02:48+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-14T10:04:42+0900 | relaxed-north-r1 | success | true | 47 |

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
1643437 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1691032 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
