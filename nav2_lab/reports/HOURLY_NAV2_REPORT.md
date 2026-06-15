# Hourly Nav2 Report

- generated_at: 2026-06-16T04:07:01+09:00
- total_trials: 4904
- latest_git: 3667d6a hourly nav2 report 2026-06-16 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 210 | 189 | 0.900 | 5.09 | 1.00 | 8.00 |
| baseline-north-control | 211 | 173 | 0.820 | 37.43 | 1.00 | 50.00 |
| baseline-smoke-control | 210 | 179 | 0.852 | 3.41 | 1.00 | 6.00 |
| fast-east | 422 | 366 | 0.867 | 4.89 | 1.00 | 7.00 |
| fast-north | 422 | 363 | 0.860 | 39.28 | 0.00 | 50.00 |
| relaxed-north | 422 | 359 | 0.851 | 35.08 | 1.00 | 51.00 |
| relaxed-smoke | 422 | 376 | 0.891 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 211 | 175 | 0.829 | 40.83 | 0.00 | 121.00 |
| yaw-east-pos | 211 | 188 | 0.891 | 13.90 | 1.00 | 54.00 |
| yaw-north-pos | 210 | 178 | 0.848 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 678
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4208

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T03:43:05+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T03:45:00+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-16T03:47:39+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T03:49:33+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T03:51:28+0900 | fast-north-r1 | success | true | 13 |
| 2026-06-16T03:53:32+0900 | fast-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-16T03:55:23+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T03:57:16+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T03:59:09+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T04:01:46+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T04:04:22+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-16T04:06:25+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |

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
2839529 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2896804 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
