#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

tmp_log="$(mktemp)"
trap 'rm -f "$tmp_log"' EXIT

RUN_ID="test-fake" \
LANE="known_environment_optimization" \
WORLD="tb3_sandbox" \
START_X="0.0" START_Y="0.0" START_YAW="0.0" \
GOAL_X="1.0" GOAL_Y="0.0" GOAL_YAW="0.0" \
NAV2_TRIAL_FAKE=1 \
./scripts/run_nav2_trial.sh > "$tmp_log" 2>&1

grep -q "Ready to send goal (fake mode)" "$tmp_log"
grep -q "Fake Nav2 trial completed" reports/RUN_LOG.md

echo "PASS test_run_nav2_trial"
