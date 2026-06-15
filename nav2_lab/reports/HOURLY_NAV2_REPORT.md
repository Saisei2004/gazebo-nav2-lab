# Hourly Nav2 Report

- generated_at: 2026-06-15T11:07:01+09:00
- total_trials: 4442
- latest_git: 4dd1750 hourly nav2 report 2026-06-15 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 177 | 160 | 0.904 | 5.11 | 1.00 | 8.00 |
| baseline-north-control | 178 | 146 | 0.820 | 37.57 | 1.00 | 50.00 |
| baseline-smoke-control | 177 | 152 | 0.859 | 3.45 | 1.00 | 6.00 |
| fast-east | 356 | 305 | 0.857 | 4.87 | 1.00 | 7.00 |
| fast-north | 356 | 305 | 0.857 | 39.17 | 0.00 | 50.00 |
| relaxed-north | 356 | 306 | 0.860 | 35.86 | 1.00 | 51.00 |
| relaxed-smoke | 356 | 317 | 0.890 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 178 | 148 | 0.831 | 40.56 | 0.00 | 121.00 |
| yaw-east-pos | 178 | 159 | 0.893 | 13.87 | 1.00 | 54.00 |
| yaw-north-pos | 177 | 148 | 0.836 | 3.82 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 618
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3808

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T10:40:02+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T10:41:53+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T10:43:44+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-15T10:45:39+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T10:47:34+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-15T10:50:12+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-15T10:52:49+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-15T10:54:42+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-15T10:56:35+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-15T10:59:11+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-15T11:01:51+0900 | yaw-east-pos-r1 | success | true | 17 |
| 2026-06-15T11:03:57+0900 | yaw-east-neg-r1 | failed_goal_timeout | false | 120 |

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
724668 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
787363 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
