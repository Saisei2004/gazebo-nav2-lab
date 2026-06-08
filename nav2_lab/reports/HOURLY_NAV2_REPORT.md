# Hourly Nav2 Report

- generated_at: 2026-06-09T02:07:01+09:00
- total_trials: 295
- latest_git: 73721d3 hourly nav2 report 2026-06-09 01:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 105 | 85 | 0.810 | 3.32 | 0.00 | 5.00 |
| tb3-short-east | 97 | 86 | 0.887 | 5.04 | 1.00 | 7.00 |
| tb3-short-north | 93 | 84 | 0.903 | 41.78 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 40
- success: 255

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T01:41:54+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T01:43:50+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T01:45:44+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T01:47:35+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T01:50:13+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T01:52:50+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-09T01:56:27+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T01:58:20+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-09T02:00:16+0900 | smoke-003-repeat-r3 | success | true | 5 |
| 2026-06-09T02:02:10+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T02:04:06+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 3 |
| 2026-06-09T02:05:58+0900 | tb3-short-east-r3 | success | true | 6 |

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
1679023 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1702080 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
