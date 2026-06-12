# Hourly Nav2 Report

- generated_at: 2026-06-13T04:07:01+09:00
- total_trials: 2951
- latest_git: 905a4cf hourly nav2 report 2026-06-13 03:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 71 | 66 | 0.930 | 5.27 | 1.00 | 7.00 |
| baseline-north-control | 72 | 60 | 0.833 | 36.68 | 1.00 | 50.00 |
| baseline-smoke-control | 71 | 63 | 0.887 | 3.44 | 1.00 | 6.00 |
| fast-east | 144 | 121 | 0.840 | 4.77 | 1.00 | 7.00 |
| fast-north | 143 | 127 | 0.888 | 40.68 | 0.00 | 50.00 |
| relaxed-north | 142 | 118 | 0.831 | 35.91 | 1.00 | 50.00 |
| relaxed-smoke | 142 | 127 | 0.894 | 3.39 | 1.00 | 5.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 71 | 56 | 0.789 | 43.39 | 0.00 | 121.00 |
| yaw-east-pos | 71 | 61 | 0.859 | 13.70 | 1.00 | 54.00 |
| yaw-north-pos | 71 | 56 | 0.789 | 3.66 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 421
- failed_goal_timeout: 3
- runner_failed: 10
- success: 2517

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-13T03:41:29+0900 | relaxed-smoke-r2 | success | true | 4 |
| 2026-06-13T03:43:23+0900 | relaxed-north-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T03:45:13+0900 | relaxed-north-r2 | success | true | 48 |
| 2026-06-13T03:47:49+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-13T03:49:53+0900 | yaw-east-neg-r1 | success | true | 80 |
| 2026-06-13T03:53:03+0900 | yaw-north-pos-r1 | success | true | 5 |
| 2026-06-13T03:55:58+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T03:57:48+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-13T03:59:42+0900 | baseline-north-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-13T04:01:32+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-13T04:03:26+0900 | fast-east-r2 | failed_goal_rc_0 | false | 2 |
| 2026-06-13T04:05:18+0900 | fast-north-r1 | success | true | 48 |

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
1917309 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
1941843 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
