# Hourly Nav2 Report

- generated_at: 2026-06-15T21:07:01+09:00
- total_trials: 4715
- latest_git: 393e9e7 hourly nav2 report 2026-06-15 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 197 | 176 | 0.893 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 198 | 162 | 0.818 | 37.19 | 1.00 | 50.00 |
| baseline-smoke-control | 197 | 168 | 0.853 | 3.42 | 1.00 | 6.00 |
| fast-east | 396 | 342 | 0.864 | 4.89 | 1.00 | 7.00 |
| fast-north | 395 | 339 | 0.858 | 39.19 | 0.00 | 50.00 |
| relaxed-north | 394 | 338 | 0.858 | 35.48 | 1.00 | 51.00 |
| relaxed-smoke | 394 | 349 | 0.886 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 197 | 164 | 0.832 | 40.38 | 0.00 | 121.00 |
| yaw-east-pos | 197 | 176 | 0.893 | 13.78 | 1.00 | 54.00 |
| yaw-north-pos | 197 | 166 | 0.843 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 657
- failed_goal_timeout: 6
- runner_failed: 10
- success: 4042

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T20:42:14+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T20:44:06+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-15T20:46:43+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-15T20:49:20+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-15T20:51:24+0900 | yaw-east-neg-r1 | success | true | 16 |
| 2026-06-15T20:53:28+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T20:56:22+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-15T20:58:14+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-15T21:00:08+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T21:02:00+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-15T21:03:54+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-15T21:05:49+0900 | fast-north-r1 | success | true | 48 |

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
1952075 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1975929 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
