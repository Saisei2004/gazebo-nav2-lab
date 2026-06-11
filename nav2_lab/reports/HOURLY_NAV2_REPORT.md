# Hourly Nav2 Report

- generated_at: 2026-06-11T19:07:01+09:00
- total_trials: 2060
- latest_git: 5b92b2d hourly nav2 report 2026-06-11 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 7 | 7 | 1.000 | 5.14 | 5.00 | 6.00 |
| baseline-north-control | 8 | 8 | 1.000 | 44.12 | 14.00 | 49.00 |
| baseline-smoke-control | 7 | 5 | 0.714 | 3.00 | 1.00 | 4.00 |
| fast-east | 16 | 12 | 0.750 | 4.44 | 1.00 | 6.00 |
| fast-north | 16 | 12 | 0.750 | 36.44 | 0.00 | 49.00 |
| relaxed-north | 16 | 16 | 1.000 | 40.31 | 7.00 | 49.00 |
| relaxed-smoke | 16 | 14 | 0.875 | 3.69 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 7 | 7 | 1.000 | 40.14 | 18.00 | 65.00 |
| yaw-east-pos | 7 | 5 | 0.714 | 11.00 | 1.00 | 21.00 |
| yaw-north-pos | 7 | 6 | 0.857 | 3.71 | 1.00 | 5.00 |

## Status Counts

- failed_goal_rc_0: 296
- runner_failed: 10
- success: 1754

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T18:41:01+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-11T18:43:56+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-11T18:45:50+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-11T18:47:44+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-11T18:50:22+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-11T18:52:17+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-11T18:54:11+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-11T18:56:51+0900 | fast-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T18:58:40+0900 | relaxed-smoke-r1 | success | true | 5 |
| 2026-06-11T19:00:34+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-11T19:02:27+0900 | relaxed-north-r1 | success | true | 48 |
| 2026-06-11T19:05:04+0900 | relaxed-north-r2 | success | true | 47 |

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
1755399 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1806444 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
