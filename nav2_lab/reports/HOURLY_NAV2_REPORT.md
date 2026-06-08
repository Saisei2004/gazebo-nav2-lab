# Hourly Nav2 Report

- generated_at: 2026-06-08T19:57:02+09:00
- total_trials: 127
- latest_git: ab7cfcf hourly nav2 report 2026-06-08 19:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 48 | 35 | 0.729 | 3.06 | 0.00 | 5.00 |
| tb3-short-east | 40 | 37 | 0.925 | 5.17 | 1.00 | 7.00 |
| tb3-short-north | 39 | 37 | 0.949 | 42.10 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 18
- success: 109

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-08T19:29:14+0900 | tb3-short-north-r1 | success | true | 34 |
| 2026-06-08T19:31:36+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-08T19:34:15+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-08T19:37:52+0900 | smoke-003-repeat-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-08T19:39:42+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-08T19:41:35+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-08T19:43:28+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-08T19:45:23+0900 | tb3-short-east-r2 | success | true | 6 |
| 2026-06-08T19:47:20+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-08T19:49:15+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-08T19:51:52+0900 | tb3-short-north-r2 | success | true | 49 |
| 2026-06-08T19:54:29+0900 | tb3-short-north-r3 | success | true | 47 |

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
847049 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
892342 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
