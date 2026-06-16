# Hourly Nav2 Report

- generated_at: 2026-06-16T10:07:01+09:00
- total_trials: 5065
- latest_git: abec534 hourly nav2 report 2026-06-16 09:07:01 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 222 | 200 | 0.901 | 5.08 | 1.00 | 8.00 |
| baseline-north-control | 223 | 182 | 0.816 | 37.36 | 1.00 | 50.00 |
| baseline-smoke-control | 222 | 188 | 0.847 | 3.41 | 1.00 | 6.00 |
| fast-east | 446 | 386 | 0.865 | 4.89 | 1.00 | 7.00 |
| fast-north | 445 | 385 | 0.865 | 39.65 | 0.00 | 50.00 |
| relaxed-north | 444 | 377 | 0.849 | 35.06 | 1.00 | 51.00 |
| relaxed-smoke | 444 | 394 | 0.887 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 222 | 184 | 0.829 | 40.86 | 0.00 | 121.00 |
| yaw-east-pos | 222 | 198 | 0.892 | 13.92 | 1.00 | 54.00 |
| yaw-north-pos | 222 | 188 | 0.847 | 3.85 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 703
- failed_goal_timeout: 8
- runner_failed: 10
- success: 4344

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T09:41:22+0900 | relaxed-smoke-r2 | success | true | 3 |
| 2026-06-16T09:43:15+0900 | relaxed-north-r1 | success | true | 13 |
| 2026-06-16T09:45:19+0900 | relaxed-north-r2 | success | true | 47 |
| 2026-06-16T09:47:56+0900 | yaw-east-pos-r1 | success | true | 14 |
| 2026-06-16T09:49:59+0900 | yaw-east-neg-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T09:51:48+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-16T09:54:39+0900 | baseline-smoke-control-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T09:56:29+0900 | baseline-east-control-r1 | success | true | 5 |
| 2026-06-16T09:58:23+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-16T10:01:03+0900 | fast-east-r1 | failed_goal_rc_0 | false | 2 |
| 2026-06-16T10:02:54+0900 | fast-east-r2 | success | true | 5 |
| 2026-06-16T10:04:48+0900 | fast-north-r1 | success | true | 48 |

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
3657376 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
3685563 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
