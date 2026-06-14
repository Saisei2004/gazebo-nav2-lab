# Hourly Nav2 Report

- generated_at: 2026-06-14T22:07:01+09:00
- total_trials: 4091
- latest_git: 88d0787 hourly nav2 report 2026-06-14 21:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 152 | 142 | 0.934 | 5.22 | 1.00 | 7.00 |
| baseline-north-control | 153 | 129 | 0.843 | 38.59 | 1.00 | 50.00 |
| baseline-smoke-control | 152 | 131 | 0.862 | 3.47 | 1.00 | 6.00 |
| fast-east | 306 | 262 | 0.856 | 4.88 | 1.00 | 7.00 |
| fast-north | 306 | 262 | 0.856 | 39.00 | 0.00 | 50.00 |
| relaxed-north | 306 | 265 | 0.866 | 36.03 | 1.00 | 50.00 |
| relaxed-smoke | 306 | 270 | 0.882 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 152 | 125 | 0.822 | 39.03 | 0.00 | 121.00 |
| yaw-east-pos | 153 | 138 | 0.902 | 14.03 | 1.00 | 54.00 |
| yaw-north-pos | 152 | 125 | 0.822 | 3.79 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 565
- failed_goal_timeout: 5
- runner_failed: 10
- success: 3511

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-14T21:41:52+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-14T21:43:45+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-14T21:45:39+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-14T21:48:17+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-14T21:50:11+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-14T21:52:06+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-14T21:54:44+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-14T21:57:22+0900 | relaxed-smoke-r1 | success | true | 4 |
| 2026-06-14T21:59:14+0900 | relaxed-smoke-r2 | success | true | 5 |
| 2026-06-14T22:01:08+0900 | relaxed-north-r1 | success | true | 49 |
| 2026-06-14T22:03:47+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-14T22:06:23+0900 | yaw-east-pos-r1 | success | true | 14 |

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
3212804 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3268368 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
