#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

mkdir -p reports overseer

./scripts/summarize_benchmark.py > reports/benchmark_summary.csv
./scripts/write_hourly_report.py

git add \
  HUMAN_FOLLOWUP.md \
  reports/RUN_LOG.md \
  reports/benchmark_results.csv \
  reports/benchmark_summary.csv \
  reports/HOURLY_NAV2_REPORT.md \
  reports/NAV2_BATCH_STATUS.md \
  scripts/write_hourly_report.py \
  scripts/hourly_report_commit_push.sh

if git diff --cached --quiet; then
  echo "no report changes to commit"
else
  git commit -m "hourly nav2 report $(date '+%Y-%m-%d %H:%M:%S %z')"
fi

if git remote get-url origin >/dev/null 2>&1; then
  branch="$(git branch --show-current)"
  git push origin "$branch"
else
  echo "origin remote is not configured; committed locally only"
fi
