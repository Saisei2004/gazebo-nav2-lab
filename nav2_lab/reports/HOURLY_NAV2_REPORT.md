# Hourly Nav2 Report

- generated_at: 2026-06-16T02:07:01+09:00
- total_trials: 4849
- latest_git: 20ceaef hourly nav2 report 2026-06-16 01:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 206 | 185 | 0.898 | 5.09 | 1.00 | 8.00 |
| baseline-north-control | 207 | 170 | 0.821 | 37.44 | 1.00 | 50.00 |
| baseline-smoke-control | 206 | 176 | 0.854 | 3.42 | 1.00 | 6.00 |
| fast-east | 414 | 358 | 0.865 | 4.89 | 1.00 | 7.00 |
| fast-north | 414 | 356 | 0.860 | 39.31 | 0.00 | 50.00 |
| relaxed-north | 414 | 352 | 0.850 | 35.15 | 1.00 | 51.00 |
| relaxed-smoke | 414 | 368 | 0.889 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 207 | 172 | 0.831 | 40.95 | 0.00 | 121.00 |
| yaw-east-pos | 207 | 184 | 0.889 | 13.88 | 1.00 | 54.00 |
| yaw-north-pos | 207 | 175 | 0.845 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 673
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4158

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T01:38:36+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-16T01:41:14+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T01:43:09+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T01:45:05+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T01:47:42+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-16T01:50:20+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T01:52:12+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T01:54:06+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-16T01:56:44+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-16T01:59:21+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-16T02:01:24+0900 | yaw-east-neg-r1 | success | true | 117 |
| 2026-06-16T02:05:09+0900 | yaw-north-pos-r1 | success | true | 4 |

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
2562457 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2633193 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
