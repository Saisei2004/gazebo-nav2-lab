#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

matrix="${1:-config/repeated_trials.csv}"
results_csv="${RESULTS_CSV:-reports/benchmark_results.csv}"
run_log="${RUN_LOG_FILE:-reports/RUN_LOG.md}"
trial_runner="${TRIAL_RUNNER:-./scripts/run_nav2_trial.sh}"
max_trials="${MAX_TRIALS:-0}"
inter_trial_sleep_sec="${INTER_TRIAL_SLEEP_SEC:-45}"

if [[ ! -f "$matrix" ]]; then
  echo "missing trial matrix: $matrix" >&2
  exit 2
fi

if [[ ! -x "$trial_runner" ]]; then
  echo "trial runner is not executable: $trial_runner" >&2
  exit 2
fi

mkdir -p reports logs/batches
if [[ ! -f "$results_csv" ]]; then
  printf 'timestamp,experiment_id,lane,world,params,start_pose,goal_pose,status,success,duration_sec,trial_dir\n' > "$results_csv"
fi

batch_id="$(date +%Y%m%d-%H%M%S)"
batch_dir="logs/batches/$batch_id"
mkdir -p "$batch_dir"

completed=0
failed=0

while IFS=, read -r run_id lane world start_x start_y start_yaw goal_x goal_y goal_yaw params repeats; do
  if [[ "$run_id" == "run_id" || -z "$run_id" ]]; then
    continue
  fi

  repeats="${repeats:-1}"
  for ((i = 1; i <= repeats; i++)); do
    if [[ "$max_trials" -gt 0 && "$completed" -ge "$max_trials" ]]; then
      break 2
    fi

    experiment_id="${run_id}-r${i}"
    out_log="$batch_dir/${experiment_id}.out.log"
    err_log="$batch_dir/${experiment_id}.err.log"
    timestamp="$(date '+%Y-%m-%dT%H:%M:%S%z')"

    set +e
    RUN_ID="$experiment_id" \
      LANE="$lane" \
      WORLD="$world" \
      START_X="$start_x" \
      START_Y="$start_y" \
      START_YAW="$start_yaw" \
      GOAL_X="$goal_x" \
      GOAL_Y="$goal_y" \
      GOAL_YAW="$goal_yaw" \
      PARAMS="$params" \
      "$trial_runner" >"$out_log" 2>"$err_log"
    rc=$?
    set -e

    summary_path="$(grep -Eo 'logs/trials/[^ ]+/summary[.]json' "$out_log" | tail -n 1 || true)"
    if [[ -z "$summary_path" ]]; then
      summary_path="$(find logs/trials -maxdepth 2 -path "*/${experiment_id}_*/summary.json" -print 2>/dev/null | sort | tail -n 1 || true)"
    fi

    if [[ -n "$summary_path" && -f "$summary_path" ]]; then
      metrics="$(python3 - "$summary_path" <<'PY'
import json
import sys
from pathlib import Path

data = json.loads(Path(sys.argv[1]).read_text())
print(",".join([
    str(data.get("status", "unknown")),
    str(data.get("success", False)).lower(),
    str(data.get("duration_sec", "")),
    str(data.get("trial_dir", "")),
]))
PY
)"
    else
      metrics="runner_failed,false,,"
    fi

    IFS=, read -r status success duration_sec trial_dir <<< "$metrics"
    start_pose="${start_x},${start_y},${start_yaw}"
    goal_pose="${goal_x},${goal_y},${goal_yaw}"
    printf '%s,%s,%s,%s,%s,"%s","%s",%s,%s,%s,%s\n' \
      "$timestamp" "$experiment_id" "$lane" "$world" "$params" \
      "$start_pose" "$goal_pose" "$status" "$success" "$duration_sec" "$trial_dir" >> "$results_csv"

    ./scripts/append_report_entry.py \
      --run="$experiment_id" \
      --lane="$lane" \
      --environment="$world" \
      --params="$params" \
      --start="$start_pose" \
      --goal="$goal_pose" \
      --status="$status" \
      --metrics="{\"success\":$success,\"duration_sec\":\"$duration_sec\",\"trial_dir\":\"$trial_dir\",\"runner_rc\":$rc}" \
      --conclusion="Repeated Nav2 batch trial completed with status $status." \
      --next-action="Compare benchmark_results.csv against baseline and expand the trial matrix."

    completed=$((completed + 1))
    if [[ "$rc" -ne 0 ]]; then
      failed=$((failed + 1))
    fi

    sleep "$inter_trial_sleep_sec"
  done
done < "$matrix"

echo "batch_id=$batch_id completed=$completed failed=$failed results=$results_csv run_log=$run_log"
if [[ "$completed" -eq 0 ]]; then
  exit 3
fi
if [[ "$failed" -gt 0 && "${ALLOW_TRIAL_FAILURES:-1}" != "1" ]]; then
  exit 4
fi
