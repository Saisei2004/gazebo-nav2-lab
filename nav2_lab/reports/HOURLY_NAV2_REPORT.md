# Hourly Nav2 Report

- generated_at: 2026-06-09T06:07:01+09:00
- total_trials: 403
- latest_git: adea87b hourly nav2 report 2026-06-09 05:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 141 | 115 | 0.816 | 3.33 | 0.00 | 5.00 |
| tb3-short-east | 133 | 114 | 0.857 | 4.88 | 1.00 | 7.00 |
| tb3-short-north | 129 | 117 | 0.907 | 41.91 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 57
- success: 346

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T05:41:09+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T05:43:03+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T05:44:53+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T05:46:49+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T05:49:26+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T05:52:03+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T05:55:41+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T05:57:34+0900 | smoke-003-repeat-r2 | success | true | 3 |
| 2026-06-09T05:59:27+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T06:01:20+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T06:03:14+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-09T06:05:09+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 2 |

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
2201662 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
2226244 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
