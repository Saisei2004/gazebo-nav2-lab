# Hourly Nav2 Report

- generated_at: 2026-06-11T03:07:01+09:00
- total_trials: 1630
- latest_git: 7b33005 hourly nav2 report 2026-06-11 02:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 549 | 469 | 0.854 | 3.50 | 0.00 | 6.00 |
| tb3-short-east | 541 | 470 | 0.869 | 4.89 | 1.00 | 8.00 |
| tb3-short-north | 540 | 462 | 0.856 | 39.81 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 229
- success: 1401

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T02:40:24+0900 | tb3-short-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T02:42:14+0900 | tb3-short-north-r2 | success | true | 47 |
| 2026-06-11T02:44:50+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T02:48:27+0900 | smoke-003-repeat-r1 | success | true | 5 |
| 2026-06-11T02:50:22+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-11T02:52:16+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-11T02:54:08+0900 | tb3-short-east-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T02:55:58+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T02:57:53+0900 | tb3-short-east-r3 | success | true | 7 |
| 2026-06-11T02:59:48+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-11T03:02:26+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-11T03:04:17+0900 | tb3-short-north-r3 | failed_goal_rc_0 | false | 2 |

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
3918873 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
