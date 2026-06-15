# Hourly Nav2 Report

- generated_at: 2026-06-16T03:07:01+09:00
- total_trials: 4877
- latest_git: 575abc6 hourly nav2 report 2026-06-16 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 208 | 187 | 0.899 | 5.09 | 1.00 | 8.00 |
| baseline-north-control | 209 | 171 | 0.818 | 37.32 | 1.00 | 50.00 |
| baseline-smoke-control | 208 | 177 | 0.851 | 3.41 | 1.00 | 6.00 |
| fast-east | 418 | 362 | 0.866 | 4.89 | 1.00 | 7.00 |
| fast-north | 418 | 360 | 0.861 | 39.39 | 0.00 | 50.00 |
| relaxed-north | 418 | 355 | 0.849 | 35.03 | 1.00 | 51.00 |
| relaxed-smoke | 418 | 372 | 0.890 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 209 | 174 | 0.833 | 40.72 | 0.00 | 121.00 |
| yaw-east-pos | 209 | 186 | 0.890 | 13.89 | 1.00 | 54.00 |
| yaw-north-pos | 209 | 177 | 0.847 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 676
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4183

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T02:42:25+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T02:44:15+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-16T02:46:10+0900 | fast-east-r2 | success | true | 7 |
| 2026-06-16T02:48:07+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T02:50:44+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-16T02:53:22+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T02:55:14+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-16T02:57:07+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T02:58:57+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-16T03:01:34+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-16T03:03:39+0900 | yaw-east-neg-r1 | success | true | 19 |
| 2026-06-16T03:05:46+0900 | yaw-north-pos-r1 | success | true | 5 |

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
2702559 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2764895 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
