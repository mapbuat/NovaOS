#!/usr/bin/env bash
set -eu

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WORKSPACE="${NOVAOS_AOSP_DIR:-$ROOT/aosp-work}"

echo "NovaOS AOSP workspace preparation"
echo "Workspace: $WORKSPACE"
echo

if [ -e "$WORKSPACE" ]; then
  echo "ERROR: Direktori sudah ada."
  echo "Pilih direktori kosong dengan NOVAOS_AOSP_DIR."
  exit 1
fi

mkdir -p "$WORKSPACE"

cat > "$WORKSPACE/README.txt" <<'TXT'
NovaOS AOSP workspace

Direktori ini hanya disiapkan untuk pekerjaan AOSP.
Source Android belum diunduh.

Sebelum mengambil source:
1. Tentukan model dan codename perangkat.
2. Periksa kebutuhan disk dan RAM.
3. Pilih branch AOSP yang sesuai.
4. Baca dokumentasi resmi:
   https://source.android.com/docs/setup/start

Jangan flash image sebelum memastikan kompatibilitas perangkat.
TXT

echo "Workspace berhasil dibuat."
echo "Lokasi: $WORKSPACE"
echo
echo "Belum ada source AOSP yang diunduh."
echo "Lihat: $WORKSPACE/README.txt"
