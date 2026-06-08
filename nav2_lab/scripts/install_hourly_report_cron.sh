#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
repo_dir="$(pwd)"
cron_line="7 * * * * cd $repo_dir && ./scripts/hourly_report_commit_push.sh >> overseer/hourly-report.log 2>&1"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

crontab -l 2>/dev/null | grep -vF "./scripts/hourly_report_commit_push.sh" > "$tmp" || true
printf '%s\n' "$cron_line" >> "$tmp"
crontab "$tmp"

echo "installed hourly report cron:"
echo "$cron_line"
