# Hourly Nav2 Report

- generated_at: 2026-06-13T19:07:01+09:00
- total_trials: 3359
- latest_git: c972d08 hourly nav2 report 2026-06-13 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 100 | 92 | 0.920 | 5.20 | 1.00 | 7.00 |
| baseline-north-control | 101 | 83 | 0.822 | 36.78 | 1.00 | 50.00 |
| baseline-smoke-control | 100 | 86 | 0.860 | 3.44 | 1.00 | 6.00 |
| fast-east | 202 | 169 | 0.837 | 4.80 | 1.00 | 7.00 |
| fast-north | 202 | 175 | 0.866 | 39.68 | 0.00 | 50.00 |
| relaxed-north | 200 | 167 | 0.835 | 35.52 | 1.00 | 50.00 |
| relaxed-smoke | 201 | 177 | 0.881 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 100 | 82 | 0.820 | 42.04 | 0.00 | 121.00 |
| yaw-east-pos | 100 | 87 | 0.870 | 13.72 | 1.00 | 54.00 |
| yaw-north-pos | 100 | 78 | 0.780 | 3.63 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 487
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2858

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T18:39:08+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-13T18:41:46+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-13T18:43:50+0900 | yaw-east-neg-r1 | success | true | 103 |
| 2026-06-13T18:47:23+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T18:50:16+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T18:52:09+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T18:54:03+0900 | baseline-north-control-r1 | success | true | 47 |
| 2026-06-13T18:56:40+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-13T18:58:34+0900 | fast-east-r2 | success | true | 7 |
| 2026-06-13T19:00:30+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-13T19:03:08+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T19:05:44+0900 | relaxed-smoke-r1 | success | true | 3 |

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
3874641 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3911920 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
