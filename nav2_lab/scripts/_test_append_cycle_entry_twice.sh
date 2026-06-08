#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

RUN_LOG_FILE="$tmp_dir/RUN_LOG.md" scripts/append_cycle_entry.sh "entry one"
RUN_LOG_FILE="$tmp_dir/RUN_LOG.md" scripts/append_cycle_entry.sh "entry two"

line_count="$(wc -l < "$tmp_dir/RUN_LOG.md" | tr -d ' ')"
if [[ "$line_count" != "5" ]]; then
  echo "expected 5 lines, got $line_count" >&2
  cat "$tmp_dir/RUN_LOG.md" >&2
  exit 1
fi

expected="$(printf '# Nav2 Lab Run Log\n---\nentry one\n---\nentry two\n')"
actual="$(cat "$tmp_dir/RUN_LOG.md")"
if [[ "$actual" != "${expected%$'\n'}" ]]; then
  echo "unexpected log content" >&2
  cat "$tmp_dir/RUN_LOG.md" >&2
  exit 1
fi

if [[ -e "$tmp_dir/RUN_LOG.md.lock" ]]; then
  echo "lock file remains" >&2
  exit 1
fi
