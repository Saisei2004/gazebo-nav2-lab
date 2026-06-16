# Hourly Nav2 Report

- generated_at: 2026-06-16T14:07:01+09:00
- total_trials: 5173
- latest_git: f4c9535 hourly nav2 report 2026-06-16 13:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 230 | 207 | 0.900 | 5.07 | 1.00 | 8.00 |
| baseline-north-control | 230 | 189 | 0.822 | 37.69 | 1.00 | 50.00 |
| baseline-smoke-control | 230 | 196 | 0.852 | 3.44 | 1.00 | 6.00 |
| fast-east | 460 | 398 | 0.865 | 4.90 | 1.00 | 7.00 |
| fast-north | 460 | 398 | 0.865 | 39.56 | 0.00 | 50.00 |
| relaxed-north | 460 | 391 | 0.850 | 35.14 | 1.00 | 51.00 |
| relaxed-smoke | 460 | 409 | 0.889 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 230 | 191 | 0.830 | 40.85 | 0.00 | 121.00 |
| yaw-east-pos | 230 | 206 | 0.896 | 13.97 | 1.00 | 54.00 |
| yaw-north-pos | 230 | 196 | 0.852 | 3.87 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 711
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4443

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T13:42:39+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T13:44:34+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-16T13:47:12+0900 | fast-north-r2 | success | true | 49 |
| 2026-06-16T13:49:52+0900 | relaxed-smoke-r1 | success | true | 3 |
| 2026-06-16T13:51:44+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T13:53:36+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-16T13:55:27+0900 | relaxed-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T13:57:19+0900 | yaw-east-pos-r1 | success | true | 15 |
| 2026-06-16T13:59:22+0900 | yaw-east-neg-r1 | success | true | 24 |
| 2026-06-16T14:01:36+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-16T14:04:29+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-16T14:06:22+0900 | baseline-east-control-r1 | success | true | 5 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
11739 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
17670 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
