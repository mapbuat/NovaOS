# NovaOS

NovaOS adalah proyek sistem operasi berbasis Android Open Source Project (AOSP).

## Status
Tahap persiapan arsitektur dan lingkungan build.

## Target awal
- AOSP sebagai basis sistem.
- Android Emulator sebagai target pengembangan awal.
- Antarmuka NovaOS dikembangkan secara bertahap.
- Tidak mengunduh seluruh source AOSP di Codespaces dengan disk terbatas.

## Struktur
- `config/`: konfigurasi target.
- `docs/`: dokumentasi arsitektur dan proses build.
- `scripts/`: skrip pemeriksaan lingkungan.

## Catatan
NovaOS belum menjadi image sistem operasi yang dapat di-boot.
</EOF>

cat > docs/ARCHITECTURE.md <<'EOF'
# Arsitektur NovaOS

## Lapisan sistem

1. **NovaOS Experience** — launcher, tampilan awal, ikon, dan aplikasi sistem.
2. **Android Framework** — API Android, Activity Manager, dan layanan sistem.
3. **Android Runtime dan native services** — ART serta pustaka native.
4. **HAL dan Linux kernel** — antarmuka perangkat keras dan kernel.
5. **Hardware atau emulator** — perangkat target.

## Strategi pengembangan

- Gunakan AOSP sebagai basis sistem, bukan membuat kernel dan framework Android dari nol.
- Mulai dengan target emulator agar tidak bergantung pada perangkat fisik.
- Kembangkan antarmuka NovaOS secara terpisah sebelum mengintegrasikannya ke build sistem.
- Jalankan pemeriksaan ruang disk sebelum sinkronisasi source AOSP.

## Batasan lingkungan saat ini

Codespaces yang tersedia memiliki ruang disk sekitar 32 GB. Ini tidak cukup untuk checkout dan build penuh AOSP secara nyaman. Jangan menjalankan `repo sync` penuh di lingkungan ini.
