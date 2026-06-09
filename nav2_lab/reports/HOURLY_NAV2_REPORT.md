# Hourly Nav2 Report

- generated_at: 2026-06-09T21:07:01+09:00
- total_trials: 811
- latest_git: 8a08f5c hourly nav2 report 2026-06-09 20:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 276 | 229 | 0.830 | 3.40 | 0.00 | 5.00 |
| tb3-short-east | 268 | 223 | 0.832 | 4.73 | 1.00 | 7.00 |
| tb3-short-north | 267 | 235 | 0.880 | 41.01 | 1.00 | 50.00 |

## Status Counts

- failed_goal_rc_0: 124
- success: 687

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-09T20:39:36+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T20:42:13+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-09T20:44:51+0900 | tb3-short-north-r3 | success | true | 47 |
| 2026-06-09T20:48:28+0900 | smoke-003-repeat-r1 | success | true | 3 |
| 2026-06-09T20:50:21+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-09T20:52:15+0900 | smoke-003-repeat-r3 | success | true | 4 |
| 2026-06-09T20:54:07+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-09T20:56:03+0900 | tb3-short-east-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-09T20:57:53+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-09T20:59:47+0900 | tb3-short-north-r1 | success | true | 48 |
| 2026-06-09T21:02:26+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-09T21:04:16+0900 | tb3-short-north-r3 | success | true | 49 |

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
4186064 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
