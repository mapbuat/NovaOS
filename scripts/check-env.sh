#!/usr/bin/env bash
set -eu

echo "================================"
echo " NovaOS Environment Check"
echo "================================"

if [ "$(uname -s)" != "Linux" ]; then
  echo "ERROR: Gunakan lingkungan Linux untuk persiapan AOSP."
  exit 1
fi

echo
echo "[System]"
uname -a

echo
echo "[Architecture]"
uname -m

echo
echo "[Memory]"
if [ -r /proc/meminfo ]; then
  grep -E 'MemTotal|MemAvailable' /proc/meminfo || true
fi

echo
echo "[Disk]"
df -h .

echo
echo "[Required tools]"
for tool in git curl python3; do
  if command -v "$tool" >/dev/null 2>&1; then
    printf 'OK   %s: ' "$tool"
    command -v "$tool"
  else
    echo "MISS $tool"
  fi
done

echo
echo "[Git]"
git --version

echo
echo "Pemeriksaan selesai."
echo "Catatan: lolos pemeriksaan ini bukan berarti"
echo "mesin memenuhi semua kebutuhan build AOSP."
