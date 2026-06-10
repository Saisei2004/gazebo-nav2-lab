# Hourly Nav2 Report

- generated_at: 2026-06-11T05:07:02+09:00
- total_trials: 1684
- latest_git: e9f251c hourly nav2 report 2026-06-11 04:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 567 | 486 | 0.857 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 559 | 484 | 0.866 | 4.88 | 1.00 | 8.00 |
| tb3-short-north | 558 | 479 | 0.858 | 39.99 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 235
- success: 1449

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T04:38:39+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T04:41:18+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T04:43:56+0900 | tb3-short-north-r3 | success | true | 49 |
| 2026-06-11T04:47:34+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-11T04:49:28+0900 | smoke-003-repeat-r2 | success | true | 5 |
| 2026-06-11T04:51:22+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T04:53:14+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-11T04:55:09+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T04:57:03+0900 | tb3-short-east-r3 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T04:58:54+0900 | tb3-short-north-r1 | success | true | 47 |
| 2026-06-11T05:01:31+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T05:04:09+0900 | tb3-short-north-r3 | success | true | 48 |

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
4182116 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
