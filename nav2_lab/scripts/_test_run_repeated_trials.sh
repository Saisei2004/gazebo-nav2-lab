#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

mkdir -p "$tmp_dir/logs/trials" "$tmp_dir/reports"

matrix="$tmp_dir/repeated_trials.csv"
cat > "$matrix" <<'EOF'
run_id,lane,world,start_x,start_y,start_yaw,goal_x,goal_y,goal_yaw,params,repeats
mock,known_environment_optimization,tb3_sandbox,-2.0,-0.5,0.0,-1.0,-0.5,0.0,baseline,2
EOF

mock_runner="$tmp_dir/mock_run_nav2_trial.sh"
cat > "$mock_runner" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
trial_dir="logs/trials/${RUN_ID}_mock"
mkdir -p "$trial_dir"
cat > "$trial_dir/summary.json" <<JSON
{
  "run_id": "$RUN_ID",
  "trial_id": "${RUN_ID}_mock",
  "status": "success",
  "success": true,
  "duration_sec": 3,
  "trial_dir": "$trial_dir"
}
JSON
echo "Trial summary: $trial_dir/summary.json"
cat "$trial_dir/summary.json"
EOF
chmod +x "$mock_runner"

RESULTS_CSV="$tmp_dir/reports/benchmark_results.csv" \
RUN_LOG_FILE="$tmp_dir/reports/RUN_LOG.md" \
TRIAL_RUNNER="$mock_runner" \
NAV2_TRIAL_FAKE=1 \
scripts/run_repeated_trials.sh "$matrix"

rows="$(wc -l < "$tmp_dir/reports/benchmark_results.csv" | tr -d ' ')"
if [[ "$rows" != "3" ]]; then
  echo "expected benchmark csv header + 2 rows, got $rows" >&2
  cat "$tmp_dir/reports/benchmark_results.csv" >&2
  exit 1
fi

entries="$(grep -c '^## ' "$tmp_dir/reports/RUN_LOG.md")"
if [[ "$entries" != "2" ]]; then
  echo "expected 2 RUN_LOG entries, got $entries" >&2
  cat "$tmp_dir/reports/RUN_LOG.md" >&2
  exit 1
fi
