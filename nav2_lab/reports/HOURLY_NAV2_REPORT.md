# Hourly Nav2 Report

- generated_at: 2026-06-16T00:07:01+09:00
- total_trials: 4795
- latest_git: c515bce hourly nav2 report 2026-06-15 23:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 203 | 182 | 0.897 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 203 | 167 | 0.823 | 37.46 | 1.00 | 50.00 |
| baseline-smoke-control | 203 | 173 | 0.852 | 3.41 | 1.00 | 6.00 |
| fast-east | 406 | 352 | 0.867 | 4.90 | 1.00 | 7.00 |
| fast-north | 406 | 350 | 0.862 | 39.43 | 0.00 | 50.00 |
| relaxed-north | 406 | 346 | 0.852 | 35.16 | 1.00 | 51.00 |
| relaxed-smoke | 406 | 361 | 0.889 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 203 | 168 | 0.828 | 40.82 | 0.00 | 121.00 |
| yaw-east-pos | 203 | 181 | 0.892 | 13.74 | 1.00 | 54.00 |
| yaw-north-pos | 203 | 171 | 0.842 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 664
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4113

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T23:42:17+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-15T23:44:12+0900 | fast-north-r1 | success | true | 47 |
| 2026-06-15T23:46:49+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-15T23:49:27+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-15T23:51:21+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-15T23:53:16+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T23:55:06+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T23:56:58+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-15T23:59:03+0900 | yaw-east-neg-r1 | success | true | 17 |
| 2026-06-16T00:01:09+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T00:04:02+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T00:05:52+0900 | baseline-east-control-r1 | success | true | 7 |

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
2364566 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2371408 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
