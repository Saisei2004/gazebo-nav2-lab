# Hourly Nav2 Report

- generated_at: 2026-06-09T13:07:01+09:00
- total_trials: 593
- latest_git: eae122a hourly nav2 report 2026-06-09 12:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 204 | 170 | 0.833 | 3.39 | 0.00 | 5.00 |
| tb3-short-east | 196 | 167 | 0.852 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 193 | 174 | 0.902 | 41.88 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 82
- success: 511

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T12:42:52+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T12:44:47+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T12:46:44+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T12:48:34+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T12:50:26+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-09T12:54:03+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-09T12:55:57+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T12:57:51+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T12:59:43+0900 | tb3-short-east-r1 | success | true | 7 |
| 2026-06-09T13:01:37+0900 | tb3-short-east-r2 | success | true | 7 |
| 2026-06-09T13:03:35+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T13:05:30+0900 | tb3-short-north-r1 | success | true | 48 |

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
3114754 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3143303 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
