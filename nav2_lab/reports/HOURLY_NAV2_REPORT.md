# Hourly Nav2 Report

- generated_at: 2026-06-15T18:07:02+09:00
- total_trials: 4633
- latest_git: 671c456 hourly nav2 report 2026-06-15 17:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 191 | 171 | 0.895 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 192 | 158 | 0.823 | 37.53 | 1.00 | 50.00 |
| baseline-smoke-control | 191 | 163 | 0.853 | 3.42 | 1.00 | 6.00 |
| fast-east | 384 | 330 | 0.859 | 4.87 | 1.00 | 7.00 |
| fast-north | 384 | 331 | 0.862 | 39.39 | 0.00 | 50.00 |
| relaxed-north | 382 | 328 | 0.859 | 35.71 | 1.00 | 51.00 |
| relaxed-smoke | 383 | 341 | 0.890 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 191 | 158 | 0.827 | 39.29 | 0.00 | 121.00 |
| yaw-east-pos | 191 | 171 | 0.895 | 13.84 | 1.00 | 54.00 |
| yaw-north-pos | 191 | 161 | 0.843 | 3.84 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 643
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3974

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T17:40:49+0900 | relaxed-north-r2 | success | true | 8 |
| 2026-06-15T17:42:49+0900 | yaw-east-pos-r1 | success | true | 16 |
| 2026-06-15T17:44:54+0900 | yaw-east-neg-r1 | success | true | 24 |
| 2026-06-15T17:47:08+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-15T17:50:01+0900 | baseline-smoke-control-r1 | success | true | 3 |
| 2026-06-15T17:51:54+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-15T17:53:48+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-15T17:56:27+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-15T17:58:24+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-15T18:00:20+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-15T18:02:57+0900 | fast-north-r2 | success | true | 25 |
| 2026-06-15T18:05:11+0900 | relaxed-smoke-r1 | success | true | 4 |

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
1594494 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1632189 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
