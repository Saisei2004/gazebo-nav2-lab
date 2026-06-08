#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

log_file="${RUN_LOG_FILE:-reports/RUN_LOG.md}"
entry="${1:-}"

if [[ -z "$entry" ]]; then
  echo "usage: $0 ENTRY" >&2
  exit 2
fi

mkdir -p "$(dirname "$log_file")"
lock_file="${log_file}.lock"

cleanup() {
  rmdir "$lock_file" 2>/dev/null || true
}
trap cleanup EXIT INT TERM

if ! mkdir "$lock_file" 2>/dev/null; then
  echo "log is locked: $lock_file" >&2
  exit 3
fi

if [[ ! -f "$log_file" ]]; then
  printf '# Nav2 Lab Run Log\n---\n' > "$log_file"
fi

last_line="$(tail -n 1 "$log_file" 2>/dev/null || true)"
if [[ "$last_line" != "---" ]]; then
  printf '%s\n' '---' >> "$log_file"
fi

printf '%s\n' "$entry" >> "$log_file"
