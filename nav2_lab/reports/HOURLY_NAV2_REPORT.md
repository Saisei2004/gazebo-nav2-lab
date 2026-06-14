# Hourly Nav2 Report

- generated_at: 2026-06-14T21:07:01+09:00
- total_trials: 4064
- latest_git: 389dfa2 hourly nav2 report 2026-06-14 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 150 | 140 | 0.933 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 151 | 127 | 0.841 | 38.46 | 1.00 | 50.00 |
| baseline-smoke-control | 150 | 129 | 0.860 | 3.47 | 1.00 | 6.00 |
| fast-east | 302 | 258 | 0.854 | 4.87 | 1.00 | 7.00 |
| fast-north | 302 | 258 | 0.854 | 38.88 | 0.00 | 50.00 |
| relaxed-north | 302 | 261 | 0.864 | 35.98 | 1.00 | 50.00 |
| relaxed-smoke | 302 | 266 | 0.881 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 151 | 124 | 0.821 | 39.14 | 0.00 | 121.00 |
| yaw-east-pos | 151 | 136 | 0.901 | 14.01 | 1.00 | 54.00 |
| yaw-north-pos | 150 | 124 | 0.827 | 3.80 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 564
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3485

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T20:42:25+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-14T20:44:20+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-14T20:46:55+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T20:48:48+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-14T20:50:43+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T20:53:20+0900 | fast-north-r2 | success | true | 12 |
| 2026-06-14T20:55:21+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-14T20:57:13+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-14T20:59:07+0900 | relaxed-north-r1 | success | true | 10 |
| 2026-06-14T21:01:06+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-14T21:03:43+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-14T21:05:47+0900 | yaw-east-neg-r1 | success | true | 21 |

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
3078000 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3136673 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
