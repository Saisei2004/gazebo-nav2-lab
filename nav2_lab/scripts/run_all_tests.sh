#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

scripts/test_run_nav2_trial.sh
scripts/_test_append_cycle_entry.sh
scripts/_test_append_cycle_entry_twice.sh
scripts/_test_run_repeated_trials.sh
scripts/_test_summarize_benchmark.py
