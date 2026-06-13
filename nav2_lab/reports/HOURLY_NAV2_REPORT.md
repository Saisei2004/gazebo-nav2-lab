# Hourly Nav2 Report

- generated_at: 2026-06-13T11:07:01+09:00
- total_trials: 3141
- latest_git: 7507b08 hourly nav2 report 2026-06-13 10:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 84 | 78 | 0.929 | 5.25 | 1.00 | 7.00 |
| baseline-north-control | 85 | 71 | 0.835 | 37.32 | 1.00 | 50.00 |
| baseline-smoke-control | 84 | 74 | 0.881 | 3.44 | 1.00 | 6.00 |
| fast-east | 170 | 143 | 0.841 | 4.78 | 1.00 | 7.00 |
| fast-north | 170 | 149 | 0.876 | 39.85 | 0.00 | 50.00 |
| relaxed-north | 170 | 143 | 0.841 | 35.91 | 1.00 | 50.00 |
| relaxed-smoke | 170 | 149 | 0.876 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 85 | 68 | 0.800 | 42.25 | 0.00 | 121.00 |
| yaw-east-pos | 85 | 72 | 0.847 | 13.40 | 1.00 | 54.00 |
| yaw-north-pos | 85 | 67 | 0.788 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 451
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2676

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T10:40:24+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-13T10:43:01+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T10:44:55+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-13T10:46:50+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-13T10:49:28+0900 | fast-north-r2 | success | true | 13 |
| 2026-06-13T10:51:30+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T10:53:22+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T10:55:14+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-13T10:57:54+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-13T11:00:30+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T11:02:35+0900 | yaw-east-neg-r1 | success | true | 18 |
| 2026-06-13T11:04:43+0900 | yaw-north-pos-r1 | success | true | 5 |

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
2860703 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
