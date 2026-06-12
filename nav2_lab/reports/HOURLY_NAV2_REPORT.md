# Hourly Nav2 Report

- generated_at: 2026-06-13T06:07:01+09:00
- total_trials: 3005
- latest_git: df6da2b hourly nav2 report 2026-06-13 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 75 | 69 | 0.920 | 5.21 | 1.00 | 7.00 |
| baseline-north-control | 76 | 64 | 0.842 | 37.26 | 1.00 | 50.00 |
| baseline-smoke-control | 75 | 66 | 0.880 | 3.41 | 1.00 | 6.00 |
| fast-east | 151 | 128 | 0.848 | 4.81 | 1.00 | 7.00 |
| fast-north | 150 | 133 | 0.887 | 40.72 | 0.00 | 50.00 |
| relaxed-north | 150 | 126 | 0.840 | 35.76 | 1.00 | 50.00 |
| relaxed-smoke | 150 | 134 | 0.893 | 3.38 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 75 | 60 | 0.800 | 42.44 | 0.00 | 121.00 |
| yaw-east-pos | 75 | 64 | 0.853 | 13.57 | 1.00 | 54.00 |
| yaw-north-pos | 75 | 60 | 0.800 | 3.69 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 426
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2566

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T05:39:57+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T05:42:34+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-13T05:44:26+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T05:46:19+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-13T05:48:56+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-13T05:51:35+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T05:53:39+0900 | yaw-east-neg-r1 | success | true | 29 |
| 2026-06-13T05:55:56+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T05:58:50+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-13T06:00:43+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T06:02:37+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-13T06:05:15+0900 | fast-east-r1 | success | true | 5 |

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
2187231 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2205293 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
