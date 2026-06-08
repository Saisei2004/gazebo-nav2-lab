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
