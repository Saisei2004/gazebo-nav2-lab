# Hourly Nav2 Report

- generated_at: 2026-06-13T21:07:01+09:00
- total_trials: 3412
- latest_git: 9a41192 hourly nav2 report 2026-06-13 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 104 | 95 | 0.913 | 5.16 | 1.00 | 7.00 |
| baseline-north-control | 105 | 87 | 0.829 | 37.20 | 1.00 | 50.00 |
| baseline-smoke-control | 104 | 90 | 0.865 | 3.47 | 1.00 | 6.00 |
| fast-east | 210 | 177 | 0.843 | 4.82 | 1.00 | 7.00 |
| fast-north | 208 | 181 | 0.870 | 39.92 | 0.00 | 50.00 |
| relaxed-north | 208 | 175 | 0.841 | 35.88 | 1.00 | 50.00 |
| relaxed-smoke | 208 | 183 | 0.880 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 104 | 86 | 0.827 | 41.54 | 0.00 | 121.00 |
| yaw-east-pos | 104 | 91 | 0.875 | 13.77 | 1.00 | 54.00 |
| yaw-north-pos | 104 | 82 | 0.788 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 489
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2909

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T20:40:34+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T20:42:27+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T20:44:19+0900 | relaxed-north-r1 | success | true | 21 |
| 2026-06-13T20:46:31+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T20:49:08+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-13T20:51:11+0900 | yaw-east-neg-r1 | success | true | 60 |
| 2026-06-13T20:54:00+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T20:56:54+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-13T20:58:47+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T21:00:41+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-13T21:03:19+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-13T21:05:13+0900 | fast-east-r2 | success | true | 5 |

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
4152101 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4174251 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
