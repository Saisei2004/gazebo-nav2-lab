# Hourly Nav2 Report

- generated_at: 2026-06-13T15:07:01+09:00
- total_trials: 3251
- latest_git: 6e306ea hourly nav2 report 2026-06-13 14:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 92 | 84 | 0.913 | 5.18 | 1.00 | 7.00 |
| baseline-north-control | 93 | 76 | 0.817 | 36.73 | 1.00 | 50.00 |
| baseline-smoke-control | 92 | 81 | 0.880 | 3.45 | 1.00 | 6.00 |
| fast-east | 186 | 155 | 0.833 | 4.77 | 1.00 | 7.00 |
| fast-north | 186 | 161 | 0.866 | 39.47 | 0.00 | 50.00 |
| relaxed-north | 186 | 154 | 0.828 | 35.30 | 1.00 | 50.00 |
| relaxed-smoke | 186 | 164 | 0.882 | 3.36 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 92 | 75 | 0.815 | 43.09 | 0.00 | 121.00 |
| yaw-east-pos | 93 | 80 | 0.860 | 13.62 | 1.00 | 54.00 |
| yaw-north-pos | 92 | 73 | 0.793 | 3.67 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 472
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2765

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T14:43:19+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-13T14:45:12+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T14:47:06+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T14:48:58+0900 | fast-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T14:50:48+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-13T14:52:43+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-13T14:55:21+0900 | fast-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T14:57:12+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T14:59:05+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T15:00:58+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-13T15:03:35+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T15:06:11+0900 | yaw-east-pos-r1 | success | true | 17 |

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
3333528 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3385784 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
