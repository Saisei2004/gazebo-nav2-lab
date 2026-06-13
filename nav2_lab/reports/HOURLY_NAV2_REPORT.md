# Hourly Nav2 Report

- generated_at: 2026-06-13T22:07:01+09:00
- total_trials: 3438
- latest_git: 89ee4eb hourly nav2 report 2026-06-13 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 106 | 97 | 0.915 | 5.16 | 1.00 | 7.00 |
| baseline-north-control | 107 | 89 | 0.832 | 37.06 | 1.00 | 50.00 |
| baseline-smoke-control | 106 | 91 | 0.858 | 3.46 | 1.00 | 6.00 |
| fast-east | 212 | 178 | 0.840 | 4.81 | 1.00 | 7.00 |
| fast-north | 212 | 185 | 0.873 | 40.08 | 0.00 | 50.00 |
| relaxed-north | 212 | 179 | 0.844 | 35.93 | 1.00 | 50.00 |
| relaxed-smoke | 212 | 187 | 0.882 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 106 | 87 | 0.821 | 42.12 | 0.00 | 121.00 |
| yaw-east-pos | 106 | 93 | 0.877 | 13.79 | 1.00 | 54.00 |
| yaw-north-pos | 106 | 84 | 0.792 | 3.67 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 491
- failed_goal_timeout: 5
- runner_failed: 10
- success: 2932

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T21:38:03+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-13T21:40:40+0900 | fast-north-r2 | success | true | 50 |
| 2026-06-13T21:43:17+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-13T21:45:12+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T21:47:06+0900 | relaxed-north-r1 | success | true | 12 |
| 2026-06-13T21:49:08+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T21:51:44+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-13T21:53:51+0900 | yaw-east-neg-r1 | failed_goal_timeout | false | 120 |
| 2026-06-13T21:57:40+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T22:00:35+0900 | baseline-smoke-control-r1 | success | true | 5 |
| 2026-06-13T22:02:30+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T22:04:25+0900 | baseline-north-control-r1 | success | true | 49 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
97789 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
112091 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
