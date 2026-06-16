# Hourly Nav2 Report

- generated_at: 2026-06-16T20:07:01+09:00
- total_trials: 5334
- latest_git: 19fca44 hourly nav2 report 2026-06-16 19:07:02 +0900

## Summary

| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0.000 | 1.00 | 1.00 | 1.00 |
| baseline-east-control | 241 | 216 | 0.896 | 5.06 | 1.00 | 8.00 |
| baseline-north-control | 242 | 201 | 0.831 | 37.93 | 1.00 | 50.00 |
| baseline-smoke-control | 241 | 205 | 0.851 | 3.44 | 1.00 | 6.00 |
| fast-east | 484 | 419 | 0.866 | 4.89 | 1.00 | 7.00 |
| fast-north | 484 | 421 | 0.870 | 39.66 | 0.00 | 50.00 |
| relaxed-north | 482 | 412 | 0.855 | 35.06 | 1.00 | 51.00 |
| relaxed-smoke | 484 | 430 | 0.888 | 3.33 | 1.00 | 6.00 |
| smoke-003-repeat | 654 | 556 | 0.850 | 3.51 | 0.00 | 6.00 |
| stability-smoke | 10 | 0 | 0.000 |  |  |  |
| tb3-short-east | 646 | 554 | 0.858 | 4.84 | 1.00 | 8.00 |
| tb3-short-north | 642 | 552 | 0.860 | 40.25 | 1.00 | 51.00 |
| yaw-east-neg | 241 | 202 | 0.838 | 41.40 | 0.00 | 121.00 |
| yaw-east-pos | 241 | 213 | 0.884 | 13.80 | 1.00 | 54.00 |
| yaw-north-pos | 241 | 205 | 0.851 | 3.88 | 1.00 | 6.00 |

## Status Counts

- failed_goal_rc_0: 729
- failed_goal_timeout: 9
- runner_failed: 10
- success: 4586

## Recent Trials

| timestamp | experiment | status | success | duration_sec |
| --- | --- | --- | --- | ---: |
| 2026-06-16T19:41:08+0900 | yaw-east-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T19:42:58+0900 | yaw-east-neg-r1 | success | true | 17 |
| 2026-06-16T19:45:05+0900 | yaw-north-pos-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T19:47:55+0900 | baseline-smoke-control-r1 | success | true | 4 |
| 2026-06-16T19:49:48+0900 | baseline-east-control-r1 | success | true | 6 |
| 2026-06-16T19:51:43+0900 | baseline-north-control-r1 | success | true | 49 |
| 2026-06-16T19:54:21+0900 | fast-east-r1 | success | true | 6 |
| 2026-06-16T19:56:17+0900 | fast-east-r2 | success | true | 6 |
| 2026-06-16T19:58:12+0900 | fast-north-r1 | success | true | 49 |
| 2026-06-16T20:00:52+0900 | fast-north-r2 | success | true | 47 |
| 2026-06-16T20:03:29+0900 | relaxed-smoke-r1 | failed_goal_rc_0 | false | 1 |
| 2026-06-16T20:05:19+0900 | relaxed-smoke-r2 | success | true | 5 |

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
638791 bash ./scripts/run_repeated_trials.sh config/repeated_trials.csv
680658 bash -lc pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true
```

## Notes

- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.
- `tb3-short-east` is currently stable and fast.
- `tb3-short-north` is stable but slow, so it remains a tuning target.
