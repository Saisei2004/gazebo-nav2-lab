# Hourly Nav2 Report

- generated_at: 2026-06-15T22:07:01+09:00
- total_trials: 4742
- latest_git: 14b9904 hourly nav2 report 2026-06-15 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 199 | 178 | 0.894 | 5.05 | 1.00 | 8.00 |
| baseline-north-control | 200 | 164 | 0.820 | 37.30 | 1.00 | 50.00 |
| baseline-smoke-control | 199 | 170 | 0.854 | 3.42 | 1.00 | 6.00 |
| fast-east | 400 | 346 | 0.865 | 4.89 | 1.00 | 7.00 |
| fast-north | 398 | 342 | 0.859 | 39.26 | 0.00 | 50.00 |
| relaxed-north | 398 | 340 | 0.854 | 35.28 | 1.00 | 51.00 |
| relaxed-smoke | 398 | 353 | 0.887 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 199 | 166 | 0.834 | 40.17 | 0.00 | 121.00 |
| yaw-east-pos | 199 | 178 | 0.894 | 13.79 | 1.00 | 54.00 |
| yaw-north-pos | 199 | 167 | 0.839 | 3.83 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 660
- failed_goal_timeout: 6
- runner_failed: 10
- success: 4066

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T21:41:20+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-15T21:43:13+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-15T21:45:05+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 3 |
| 2026-06-15T21:46:58+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-15T21:49:36+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-15T21:51:42+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-15T21:53:51+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T21:56:41+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-15T21:58:34+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-15T22:00:28+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-15T22:03:08+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-15T22:05:03+0900 | fast-east-r2 | success | true | 5 |

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
2084225 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2106931 bash ./scripts/run_nav2_trial.sh
2107147 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
