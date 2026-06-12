# Hourly Nav2 Report

- generated_at: 2026-06-12T18:07:01+09:00
- total_trials: 2679
- latest_git: 9d00777 hourly nav2 report 2026-06-12 17:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 51 | 47 | 0.922 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 52 | 46 | 0.885 | 39.65 | 1.00 | 50.00 |
| baseline-smoke-control | 51 | 44 | 0.863 | 3.29 | 1.00 | 5.00 |
| fast-east | 104 | 87 | 0.837 | 4.73 | 1.00 | 7.00 |
| fast-north | 104 | 91 | 0.875 | 40.28 | 0.00 | 50.00 |
| relaxed-north | 104 | 88 | 0.846 | 36.73 | 1.00 | 50.00 |
| relaxed-smoke | 104 | 92 | 0.885 | 3.43 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 52 | 40 | 0.769 | 43.69 | 0.00 | 121.00 |
| yaw-east-pos | 52 | 45 | 0.865 | 13.33 | 1.00 | 29.00 |
| yaw-north-pos | 52 | 41 | 0.788 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 384
- failed_goal_timeout: 2
- runner_failed: 10
- success: 2283

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-12T17:40:22+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-12T17:42:59+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-12T17:44:54+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-12T17:46:49+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-12T17:49:27+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-12T17:52:04+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-12T17:53:57+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-12T17:55:50+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-12T17:57:40+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-12T18:00:17+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-12T18:02:21+0900 | yaw-east-neg-r1 | success | true | 20 |
| 2026-06-12T18:04:30+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |

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
627689 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
