#!/usr/bin/env bash
set -eu

echo "NovaOS AOSP Preflight"
echo "====================="

ARCH="$(uname -m)"
AVAILABLE_KB="$(df -Pk . | awk 'NR==2 {print $4}')"
AVAILABLE_GB=$((AVAILABLE_KB / 1024 / 1024))

echo "Architecture: $ARCH"
echo "Available disk: ${AVAILABLE_GB} GiB"
echo

if [ "$ARCH" != "x86_64" ]; then
  echo "WARNING: AOSP workstation target requires x86_64."
fi

if [ "$AVAILABLE_GB" -lt 400 ]; then
  echo "NO-GO: Disk di bawah acuan 400 GiB untuk checkout + build AOSP penuh."
  echo "Jangan jalankan repo sync atau build penuh di mesin ini."
else
  echo "Disk memenuhi acuan kapasitas awal."
  echo "RAM, CPU, OS, dan dependensi tetap perlu diverifikasi."
fi

echo
echo "Tahap aman: konfigurasi, dokumentasi, dan kode prototipe."
