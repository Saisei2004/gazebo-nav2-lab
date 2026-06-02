#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source ./env.sh

node_version="${NODE_VERSION:-v22.16.0}"
node_arch="$(uname -m)"
case "$node_arch" in
  aarch64|arm64) node_platform="linux-arm64" ;;
  x86_64|amd64) node_platform="linux-x64" ;;
  *) echo "Unsupported architecture: $node_arch" >&2; exit 2 ;;
esac

tools_dir="$SAISEI_NAV2_LAB/.tools"
node_dir="$tools_dir/node"
npm_prefix="$tools_dir/npm-global"
mkdir -p "$tools_dir" "$npm_prefix"

if ! command -v node >/dev/null 2>&1; then
  archive="node-${node_version}-${node_platform}.tar.xz"
  url="https://nodejs.org/dist/${node_version}/${archive}"
  tmp="/tmp/${archive}"
  echo "[codex-nav2] Installing user-local Node.js from $url"
  curl -L "$url" -o "$tmp"
  rm -rf "$node_dir"
  mkdir -p "$node_dir"
  tar -xJf "$tmp" -C "$node_dir" --strip-components=1
fi

export PATH="$node_dir/bin:$npm_prefix/bin:$PATH"
npm config set prefix "$npm_prefix"

echo "[codex-nav2] Node: $(node --version)"
echo "[codex-nav2] npm: $(npm --version)"
echo "[codex-nav2] Installing OpenAI Codex CLI into $npm_prefix"
npm install -g @openai/codex

echo "[codex-nav2] Codex: $(codex --version || true)"
echo "[codex-nav2] Done. Use:"
echo "  source ./env.sh"
echo "  ./scripts/codex_nav2.sh"
