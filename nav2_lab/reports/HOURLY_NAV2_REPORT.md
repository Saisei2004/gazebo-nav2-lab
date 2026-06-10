# Hourly Nav2 Report

- generated_at: 2026-06-11T06:07:01+09:00
- total_trials: 1711
- latest_git: de447ec hourly nav2 report 2026-06-11 05:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| smoke-003-repeat | 576 | 495 | 0.859 | 3.52 | 0.00 | 6.00 |
| tb3-short-east | 568 | 491 | 0.864 | 4.88 | 1.00 | 8.00 |
| tb3-short-north | 567 | 487 | 0.859 | 40.04 | 1.00 | 51.00 |

## Status Counts

- failed_goal_rc_0: 238
- success: 1473

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-11T05:39:23+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-11T05:42:02+0900 | tb3-short-north-r2 | failed_goal_rc_0 | false | 1 |
| 2026-06-11T05:43:52+0900 | tb3-short-north-r3 | success | true | 48 |
| 2026-06-11T05:47:29+0900 | smoke-003-repeat-r1 | success | true | 4 |
| 2026-06-11T05:49:22+0900 | smoke-003-repeat-r2 | success | true | 4 |
| 2026-06-11T05:51:15+0900 | smoke-003-repeat-r3 | success | true | 5 |
| 2026-06-11T05:53:08+0900 | tb3-short-east-r1 | success | true | 6 |
| 2026-06-11T05:55:04+0900 | tb3-short-east-r2 | success | true | 5 |
| 2026-06-11T05:56:59+0900 | tb3-short-east-r3 | success | true | 5 |
| 2026-06-11T05:58:53+0900 | tb3-short-north-r1 | success | true | 49 |
| 2026-06-11T06:01:30+0900 | tb3-short-north-r2 | success | true | 48 |
| 2026-06-11T06:04:08+0900 | tb3-short-north-r3 | success | true | 48 |

## Runner State

```text
nav2-batch-runner: 1 windows (created Mon Jun  8 15:58:39 2026)
sovits: 1 windows (created Thu Apr 16 16:21:17 2026)
zunda: 1 windows (created Fri Feb 27 16:13:06 2026)
```

## Active Processes

```text
119352 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
376851 bash -c cd ~/saisei_ws/gazebo_lab/nav2_lab && INTER_TRIAL_SLEEP_SEC=90 SLEEP_SEC=60 ./scripts/run_continuous_nav2_batches.sh | tee -a overseer/nav2-batch-runner.log
376852 bash ./scripts/run_continuous_nav2_batches.sh
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
