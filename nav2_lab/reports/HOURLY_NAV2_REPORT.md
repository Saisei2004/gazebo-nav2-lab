# Hourly Nav2 Report

- generated_at: 2026-06-11T13:07:01+09:00
- total_trials: 1901
- latest_git: 0dd36c1 hourly nav2 report 2026-06-11 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 640 | 547 | 0.855 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 631 | 542 | 0.859 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 630 | 541 | 0.859 | 40.17 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 271
- success: 1630

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T12:39:49+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-11T12:42:27+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T12:46:04+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T12:47:54+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-11T12:49:47+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T12:51:40+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-11T12:53:34+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T12:55:24+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T12:57:19+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-11T12:59:57+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-11T13:02:34+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T13:05:24+0900 | smoke-003-repeat-r1 | success | true | 5 |

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
1021583 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1025225 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
