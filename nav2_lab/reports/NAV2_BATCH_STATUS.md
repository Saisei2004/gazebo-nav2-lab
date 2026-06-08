# Nav2 Batch Status

## 2026-06-08T15:32:00+09:00

- Intervention changed the work mode from logging-script repair to real Nav2 execution.
- `scripts/run_repeated_trials.sh` completed a 9-trial real Nav2 batch.
- All 9 trials succeeded.
- Current slow case: `tb3-short-north`, 27-49 seconds despite short geometric distance.
- Primary data files:
  - `reports/benchmark_results.csv`
  - `reports/benchmark_summary.csv`
  - `reports/RUN_LOG.md`

Next priority:

1. Keep real batches running.
2. Expand `config/repeated_trials.csv` with more start, goal, and yaw variants.
3. Compare baseline route families, especially the slow north case.
4. Only edit logging scripts when a failing test or broken data path proves it is necessary.

## 2026-06-08T15:38:00+09:00

Continuous execution exposed two `Goal was rejected` failures immediately after rapid relaunch. The trial runner now waits for key Nav2 lifecycle nodes to be active and adds an initial-pose settle delay before sending goals. The batch runner also waits between trials to reduce Gazebo/Nav2 relaunch noise.

Follow-up correction: explicit lifecycle manager startup conflicted with Nav2 autostart and was removed. The stable policy is to preserve the proven goal-sending flow, reset the ROS 2 daemon during cleanup, and use a longer inter-trial delay.
