# Hourly Nav2 Report

- generated_at: 2026-06-08T17:07:01+09:00
- total_trials: 51
- latest_git: 13fd72a hourly nav2 report 2026-06-08 16:33:03 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 25 | 14 | 0.560 | 2.60 | 0.00 | 4.00 |
| tb3-short-east | 14 | 14 | 1.000 | 5.57 | 5.00 | 6.00 |
| tb3-short-north | 12 | 12 | 1.000 | 46.67 | 27.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 11
- success: 40

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T16:41:05+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-08T16:42:57+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T16:44:50+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-08T16:46:45+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-08T16:48:39+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-08T16:50:35+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-08T16:53:12+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-08T16:55:51+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-08T16:59:28+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-08T17:01:21+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-08T17:03:14+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 2 |
| 2026-06-08T17:05:04+0900 | tb3-short-east-r1 | success | true | 5 |

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
511216 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
524706 bash ./scripts/run_nav2_trial.sh
524767 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
