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

## 2026-06-10T15:30:00+09:00

Do not terminate the running Nav2 agent or the continuous runner.

Human follow-up:
The current baseline-only repeated trial phase has collected enough data. More than 1300 total trials have been run across only three baseline experiments, so continuing the same three-row baseline matrix is no longer useful.

Keep the agent alive, but change strategy immediately.

Required next actions:
1. Do not add STOP_NAV2_BATCHES.
2. Do not kill the nav2-batch-runner tmux session.
3. Analyze reports/benchmark_results.csv and reports/benchmark_summary.csv.
4. Classify failed_goal_rc_0 failures from existing trial logs.
5. Investigate why tb3-short-north is consistently slow.
6. Expand config/repeated_trials.csv beyond the current three baseline rows.
7. Add yaw variants, start/goal variants, and at least one Nav2 parameter sweep.
8. After expanding the matrix, continue running real Nav2 batches using the expanded matrix.
9. Do not keep collecting the same baseline-only data unless it is explicitly needed as a control for a new comparison.

The goal is not to stop execution. The goal is to move from baseline validation to analysis and systematic improvement.


## 2026-06-11T14:35:00+09:00

Human follow-up: Start optimization now.

The baseline-only phase is complete enough. Do not continue treating the three original baseline rows as the main work. The next loops must run candidate parameter profiles and pose/yaw variants, while keeping a small baseline control.

Immediate operating rules:
1. Keep `nav2-batch-runner` alive; do not stop the continuous runner unless explicitly told.
2. Use the expanded `config/repeated_trials.csv` as the active matrix.
3. Treat `baseline` as the control condition, not the only condition.
4. Compare every candidate against baseline by success rate first, then average duration.
5. Focus first on two measurable problems: `failed_goal_rc_0` stability failures and slow `tb3-short-north` runs.
6. If a candidate is worse after enough trials, remove or deprioritize it and write the reason in `reports/IMPROVEMENT_IDEAS.md`.
7. Continue hourly reporting and GitHub push.

Optimization phase success criteria:
- reduce `failed_goal_rc_0` rate without reducing overall success rate;
- reduce `tb3-short-north` average duration;
- keep all changes tied to real CSV evidence.
