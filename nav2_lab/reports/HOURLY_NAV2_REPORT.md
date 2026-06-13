# Hourly Nav2 Report

- generated_at: 2026-06-13T17:07:01+09:00
- total_trials: 3305
- latest_git: 7ab3d4c hourly nav2 report 2026-06-13 16:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 96 | 88 | 0.917 | 5.19 | 1.00 | 7.00 |
| baseline-north-control | 97 | 80 | 0.825 | 37.21 | 1.00 | 50.00 |
| baseline-smoke-control | 96 | 84 | 0.875 | 3.47 | 1.00 | 6.00 |
| fast-east | 194 | 163 | 0.840 | 4.79 | 1.00 | 7.00 |
| fast-north | 194 | 168 | 0.866 | 39.58 | 0.00 | 50.00 |
| relaxed-north | 193 | 160 | 0.829 | 35.51 | 1.00 | 50.00 |
| relaxed-smoke | 194 | 171 | 0.881 | 3.34 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 96 | 79 | 0.823 | 42.21 | 0.00 | 121.00 |
| yaw-east-pos | 96 | 83 | 0.865 | 13.66 | 1.00 | 54.00 |
| yaw-north-pos | 96 | 75 | 0.781 | 3.65 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 478
- failed_goal_timeout: 4
- runner_failed: 10
- success: 2813

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T16:41:32+0900 | yaw-east-neg-r1 | success | true | 25 |
| 2026-06-13T16:43:45+0900 | yaw-north-pos-r1 | success | true | 4 |
| 2026-06-13T16:46:39+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T16:48:30+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-13T16:50:26+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-13T16:53:04+0900 | fast-east-r1 | success | true | 5 |
| 2026-06-13T16:54:58+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-13T16:56:52+0900 | fast-north-r1 | success | true | 48 |
| 2026-06-13T16:59:29+0900 | fast-north-r2 | success | true | 48 |
| 2026-06-13T17:02:06+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T17:03:56+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-13T17:05:48+0900 | relaxed-north-r1 | success | true | 47 |

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
3603455 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3648514 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
