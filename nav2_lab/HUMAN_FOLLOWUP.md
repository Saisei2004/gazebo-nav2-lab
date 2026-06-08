# Human Follow-Up Inbox

Append human instructions here while the 24h Nav2 agent is running.

Newest instructions should be treated as highest priority unless they conflict with safety rules.

## 2026-06-04T17:50:00+09:00

Run continuously until a human explicitly stops you. Continue from the successful `smoke-003` NavigateToPose trial. Build repeated trial execution, metric extraction, baseline comparisons, and then improve Nav2 behavior across known environments, unknown environments, and autonomous exploration. Keep appending timestamped results and decisions to reports.

## 2026-06-04T18:05:00+09:00

Use the DGX resources aggressively. Prefer real repeated Nav2 experiments over only editing documentation. Once a batch runner exists, run multiple trials and, when safe, parallelize independent experiments up to the available machine capacity. Use CPU/RAM/GPU generously while still avoiding system instability, sudo, destructive commands, or interfering with explicit human stop requests. Prioritize measurable throughput: many start/goal/yaw seeds, known and unknown worlds, metric extraction, CSV summaries, and baseline-vs-candidate comparisons.

## 2026-06-08T14:52:00+09:00

The repeated-trial harness now exists and has passed one real Nav2 run. Use `scripts/run_repeated_trials.sh` and `config/repeated_trials.csv` as the primary execution path. Do not spend cycles trying to repair nonexistent scripts. Expand the matrix, run real batches, append results to `reports/RUN_LOG.md`, and compare `reports/benchmark_results.csv` against the baseline. If a utility is missing, first list `scripts/` and work only from files that actually exist.

## 2026-06-08T15:35:00+09:00

Human intervention ran a real 9-trial Nav2 batch successfully. Continue from the actual data in `reports/benchmark_results.csv`, not from old ledger assumptions. A dedicated continuous runner may be active via `scripts/run_continuous_nav2_batches.sh`; do not stop it unless explicitly instructed. Your job is to analyze results, expand `config/repeated_trials.csv`, and improve Nav2 experiments. Avoid further work on `append_cycle_entry.sh` unless a concrete failing test demonstrates that it is blocking real trials.

## 2026-06-08T15:58:39+09:00
Real Nav2 batches are now running. Prioritize analysis of benchmark_results.csv. The main current issue is intermittent Goal was rejected / bt_navigator inactive on repeated relaunch. Do not edit logging utilities unless tests fail. Focus on experiment stability, cleanup timing, lifecycle readiness, and expanding real Nav2 trials.
