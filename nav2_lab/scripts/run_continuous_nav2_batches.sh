#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

matrix="${MATRIX:-config/repeated_trials.csv}"
sleep_sec="${SLEEP_SEC:-30}"
stop_file="${STOP_FILE:-overseer/STOP_NAV2_BATCHES}"
max_loops="${MAX_LOOPS:-0}"
mkdir -p overseer reports

loop=0
while true; do
  if [[ -f "$stop_file" ]]; then
    echo "stop file exists: $stop_file"
    exit 0
  fi

  loop=$((loop + 1))
  started_at="$(date '+%Y-%m-%dT%H:%M:%S%z')"
  echo "continuous_batch_loop=$loop started_at=$started_at matrix=$matrix"

  set +e
  TRIAL_TIMEOUT_SEC="${TRIAL_TIMEOUT_SEC:-120}" \
    STARTUP_TIMEOUT_SEC="${STARTUP_TIMEOUT_SEC:-90}" \
    ./scripts/run_repeated_trials.sh "$matrix"
  rc=$?
  set -e

  finished_at="$(date '+%Y-%m-%dT%H:%M:%S%z')"
  ./scripts/append_cycle_entry.sh \
    "{\"type\":\"continuous_batch\",\"loop\":$loop,\"started_at\":\"$started_at\",\"finished_at\":\"$finished_at\",\"rc\":$rc}"

  ./scripts/summarize_benchmark.py > reports/benchmark_summary.csv || true

  if [[ "$max_loops" -gt 0 && "$loop" -ge "$max_loops" ]]; then
    echo "max loops reached: $max_loops"
    exit "$rc"
  fi

  sleep "$sleep_sec"
done
