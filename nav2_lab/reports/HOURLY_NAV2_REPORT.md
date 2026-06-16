# Hourly Nav2 Report

- generated_at: 2026-06-17T01:07:01+09:00
- total_trials: 5468
- latest_git: 50890f4 hourly nav2 report 2026-06-17 00:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 251 | 226 | 0.900 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 252 | 209 | 0.829 | 37.81 | 1.00 | 50.00 |
| baseline-smoke-control | 251 | 213 | 0.849 | 3.43 | 1.00 | 6.00 |
| fast-east | 502 | 435 | 0.867 | 4.90 | 1.00 | 7.00 |
| fast-north | 502 | 437 | 0.871 | 39.78 | 0.00 | 50.00 |
| relaxed-north | 502 | 431 | 0.859 | 35.27 | 1.00 | 51.00 |
| relaxed-smoke | 502 | 445 | 0.886 | 3.32 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 251 | 210 | 0.837 | 41.53 | 0.00 | 121.00 |
| yaw-east-pos | 251 | 219 | 0.873 | 13.61 | 1.00 | 54.00 |
| yaw-north-pos | 251 | 214 | 0.853 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 746
- failed_goal_timeout: 11
- runner_failed: 10
- success: 4701

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-17T00:38:14+0900 | fast-north-r1 | success | true | 50 |
| 2026-06-17T00:40:51+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-17T00:43:28+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-17T00:45:22+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-17T00:47:15+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-17T00:49:53+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-17T00:52:30+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-17T00:54:21+0900 | yaw-east-neg-r1 | failed_goal_timeout | false | 120 |
| 2026-06-17T00:58:13+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-17T01:01:08+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-17T01:03:01+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-17T01:04:55+0900 | baseline-north-control-r1 | success | true | 48 |

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
1324672 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1337642 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
