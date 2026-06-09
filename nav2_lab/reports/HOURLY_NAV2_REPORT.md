# Hourly Nav2 Report

- generated_at: 2026-06-09T19:07:01+09:00
- total_trials: 757
- latest_git: 83b04c9 hourly nav2 report 2026-06-09 18:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 258 | 213 | 0.826 | 3.40 | 0.00 | 5.00 |
| tb3-short-east | 250 | 213 | 0.852 | 4.82 | 1.00 | 7.00 |
| tb3-short-north | 249 | 220 | 0.884 | 41.07 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 111
- success: 646

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T18:41:39+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-09T18:44:17+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T18:46:54+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T18:49:45+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-09T18:51:39+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T18:53:32+0900 | smoke-003-repeat-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T18:55:22+0900 | tb3-short-east-r1 | success | true | 5 |
| 2026-06-09T18:57:16+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-09T18:59:10+0900 | tb3-short-east-r3 | success | true | 6 |
| 2026-06-09T19:01:05+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T19:03:42+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T19:05:33+0900 | tb3-short-north-r3 | success | true | 48 |

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
3887136 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3925367 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
