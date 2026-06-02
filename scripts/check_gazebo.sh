#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "== Host =="
uname -a
cat /etc/os-release | sed -n '1,8p'
echo "arch=$(dpkg --print-architecture)"

echo
echo "== Gazebo command =="
if ! command -v gz >/dev/null 2>&1; then
  echo "gz command not found. Run ./install_gazebo_harmonic.sh first."
  exit 2
fi
command -v gz
gz sim --versions || gz --versions

echo
echo "== SDF smoke test =="
world="worlds/saisei_empty.sdf"
if [[ ! -f "$world" ]]; then
  echo "Missing $world"
  exit 3
fi

timeout 20s gz sim -s -r "$world" >/tmp/saisei_gazebo_smoke.log 2>&1 || status=$?
status="${status:-0}"
if [[ "$status" == "124" ]]; then
  echo "Server ran for 20s and was stopped by timeout: OK"
elif [[ "$status" == "0" ]]; then
  echo "Server exited normally: OK"
else
  echo "Gazebo smoke test failed with status $status"
  sed -n '1,160p' /tmp/saisei_gazebo_smoke.log
  exit "$status"
fi

sed -n '1,80p' /tmp/saisei_gazebo_smoke.log || true
