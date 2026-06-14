# Hourly Nav2 Report

- generated_at: 2026-06-15T02:07:01+09:00
- total_trials: 4198
- latest_git: bd7469d hourly nav2 report 2026-06-15 01:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 160 | 149 | 0.931 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 161 | 135 | 0.839 | 38.42 | 1.00 | 50.00 |
| baseline-smoke-control | 160 | 137 | 0.856 | 3.46 | 1.00 | 6.00 |
| fast-east | 322 | 273 | 0.848 | 4.83 | 1.00 | 7.00 |
| fast-north | 322 | 276 | 0.857 | 39.06 | 0.00 | 50.00 |
| relaxed-north | 320 | 275 | 0.859 | 35.86 | 1.00 | 51.00 |
| relaxed-smoke | 320 | 283 | 0.884 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 160 | 133 | 0.831 | 40.20 | 0.00 | 121.00 |
| yaw-east-pos | 160 | 145 | 0.906 | 14.06 | 1.00 | 54.00 |
| yaw-north-pos | 160 | 133 | 0.831 | 3.82 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 582
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3601

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T01:39:29+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-15T01:42:07+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-15T01:44:43+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-15T01:46:49+0900 | yaw-east-neg-r1 | success | true | 111 |
| 2026-06-15T01:50:31+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-15T01:53:25+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T01:55:16+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-15T01:57:11+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-15T01:59:49+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-15T02:01:44+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-15T02:03:40+0900 | fast-north-r1 | success | true | 11 |
| 2026-06-15T02:05:39+0900 | fast-north-r2 | success | true | 48 |

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
3763831 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3793932 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
