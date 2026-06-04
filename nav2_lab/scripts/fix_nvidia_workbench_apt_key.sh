#!/usr/bin/env bash
set -euo pipefail

echo "[nav2-lab] Refreshing NVIDIA AI Workbench apt signing key."
echo "[nav2-lab] This fixes apt errors like EXPKEYSIG CD63F8B21266DE3C svc-workbench."
echo "[nav2-lab] This requires sudo because the keyring lives under /usr/share/keyrings."

tmp_key="$(mktemp)"
trap 'rm -f "$tmp_key"' EXIT

curl -fsSL https://workbench.download.nvidia.com/stable/linux/gpgkey \
  | gpg --dearmor > "$tmp_key"

sudo install -m 0644 "$tmp_key" /usr/share/keyrings/ai-workbench-desktop-key.gpg

echo "[nav2-lab] Installed key:"
gpg --show-keys /usr/share/keyrings/ai-workbench-desktop-key.gpg || true

echo "[nav2-lab] Now testing apt update."
sudo apt-get update
