# Hourly Nav2 Report

- generated_at: 2026-06-09T20:07:01+09:00
- total_trials: 784
- latest_git: 7247fbd hourly nav2 report 2026-06-09 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 267 | 220 | 0.824 | 3.39 | 0.00 | 5.00 |
| tb3-short-east | 259 | 219 | 0.846 | 4.79 | 1.00 | 7.00 |
| tb3-short-north | 258 | 227 | 0.880 | 40.95 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 118
- success: 666

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T19:40:32+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T19:42:22+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T19:45:00+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T19:48:39+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T19:50:32+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T19:52:25+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T19:54:17+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T19:56:14+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T19:58:08+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T20:00:02+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T20:01:52+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T20:04:30+0900 | tb3-short-north-r3 | success | true | 48 |

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
4015920 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
4056350 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
