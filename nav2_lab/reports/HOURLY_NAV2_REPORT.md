# Hourly Nav2 Report

- generated_at: 2026-06-11T04:07:01+09:00
- total_trials: 1657
- latest_git: ffdf549 hourly nav2 report 2026-06-11 03:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 558 | 477 | 0.855 | 3.51 | 0.00 | 6.00 |
| tb3-short-east | 550 | 477 | 0.867 | 4.89 | 1.00 | 8.00 |
| tb3-short-north | 549 | 470 | 0.856 | 39.86 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 233
- success: 1424

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T03:38:49+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-11T03:41:26+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-11T03:44:04+0900 | tb3-short-north-r3 | success | true | 42 |
| 2026-06-11T03:47:36+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-11T03:49:29+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-11T03:51:23+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T03:53:13+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-11T03:55:09+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T03:57:00+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T03:58:54+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T04:00:45+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-11T04:03:23+0900 | tb3-short-north-r3 | success | true | 48 |

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
4050129 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4050142 bash ./scripts/run_nav2_trial.sh
4050179 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
