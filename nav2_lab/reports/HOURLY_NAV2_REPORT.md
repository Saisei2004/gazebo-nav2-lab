# Hourly Nav2 Report

- generated_at: 2026-06-16T01:07:01+09:00
- total_trials: 4822
- latest_git: 2c61af4 hourly nav2 report 2026-06-16 00:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 204 | 183 | 0.897 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 205 | 168 | 0.820 | 37.34 | 1.00 | 50.00 |
| baseline-smoke-control | 205 | 175 | 0.854 | 3.42 | 1.00 | 6.00 |
| fast-east | 410 | 355 | 0.866 | 4.89 | 1.00 | 7.00 |
| fast-north | 410 | 354 | 0.863 | 39.45 | 0.00 | 50.00 |
| relaxed-north | 410 | 349 | 0.851 | 35.14 | 1.00 | 51.00 |
| relaxed-smoke | 410 | 364 | 0.888 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 205 | 170 | 0.829 | 40.69 | 0.00 | 121.00 |
| yaw-east-pos | 205 | 182 | 0.888 | 13.88 | 1.00 | 54.00 |
| yaw-north-pos | 205 | 173 | 0.844 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 669
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4135

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T00:39:46+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T00:41:41+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T00:43:34+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T00:46:11+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-16T00:48:48+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T00:50:39+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T00:52:32+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-16T00:55:10+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T00:57:46+0900 | yaw-east-pos-r1 | success | true | 54 |
| 2026-06-16T01:00:30+0900 | yaw-east-neg-r1 | success | true | 21 |
| 2026-06-16T01:02:40+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T01:05:34+0900 | baseline-smoke-control-r1 | success | true | 5 |

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
2498768 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2502262 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
