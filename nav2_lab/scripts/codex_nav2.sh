#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

if ! command -v codex >/dev/null 2>&1; then
  echo "codex command not found." >&2
  echo "Run ./scripts/install_codex_cli.sh first, or install @openai/codex yourself." >&2
  exit 127
fi

if [[ $# -gt 0 && "${1:0:1}" != "-" ]]; then
  prompt_file="$1"
  shift
else
  prompt_file="prompts/codex_nav2_default.md"
fi

if [[ ! -f "$prompt_file" ]]; then
  echo "Prompt file not found: $prompt_file" >&2
  exit 2
fi

echo "[codex-nav2] workspace=$(pwd)"
echo "[codex-nav2] prompt=$prompt_file"
exec codex "$@" "$(cat "$prompt_file")"
