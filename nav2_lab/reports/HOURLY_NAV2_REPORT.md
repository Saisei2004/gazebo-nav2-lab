# Hourly Nav2 Report

- generated_at: 2026-06-15T19:07:01+09:00
- total_trials: 4660
- latest_git: 8b8a1b1 hourly nav2 report 2026-06-15 18:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 193 | 172 | 0.891 | 5.04 | 1.00 | 8.00 |
| baseline-north-control | 194 | 159 | 0.820 | 37.39 | 1.00 | 50.00 |
| baseline-smoke-control | 193 | 164 | 0.850 | 3.41 | 1.00 | 6.00 |
| fast-east | 388 | 334 | 0.861 | 4.87 | 1.00 | 7.00 |
| fast-north | 388 | 334 | 0.861 | 39.27 | 0.00 | 50.00 |
| relaxed-north | 386 | 332 | 0.860 | 35.84 | 1.00 | 51.00 |
| relaxed-smoke | 386 | 343 | 0.889 | 3.35 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 193 | 160 | 0.829 | 39.50 | 0.00 | 121.00 |
| yaw-east-pos | 193 | 172 | 0.891 | 13.78 | 1.00 | 54.00 |
| yaw-north-pos | 193 | 162 | 0.839 | 3.83 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 650
- failed_goal_timeout: 6
- runner_failed: 10
- success: 3994

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-15T18:40:22+0900 | relaxed-north-r1 | success | true | 47 |
| 2026-06-15T18:43:00+0900 | relaxed-north-r2 | success | true | 49 |
| 2026-06-15T18:45:40+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T18:47:30+0900 | yaw-east-neg-r1 | success | true | 15 |
| 2026-06-15T18:49:35+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-15T18:52:27+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-15T18:54:21+0900 | baseline-east-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-15T18:56:11+0900 | baseline-north-control-r1 | success | true | 48 |
| 2026-06-15T18:58:48+0900 | fast-east-r1 | success | true | 4 |
| 2026-06-15T19:00:42+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-15T19:02:37+0900 | fast-north-r1 | success | true | 11 |
| 2026-06-15T19:04:36+0900 | fast-north-r2 | success | true | 49 |

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
1731251 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1761843 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
