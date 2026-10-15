# Arsitektur NovaOS

NovaOS adalah sistem operasi berbasis Android Open Source Project (AOSP).

## Lapisan sistem

1. NovaOS Experience: launcher, antarmuka, dan aplikasi sistem.
2. Android Framework: API Android dan layanan sistem.
3. Android Runtime dan native services: ART serta pustaka native.
4. HAL dan Linux kernel: dukungan perangkat keras.
5. Hardware atau Android Emulator: target sistem.

## Strategi pengembangan

- Gunakan AOSP sebagai basis sistem.
- Mulai dengan target emulator.
- Kembangkan antarmuka NovaOS secara bertahap.
- Periksa kapasitas disk sebelum mengunduh source AOSP.

## Batasan Codespaces

Lingkungan saat ini memiliki disk sekitar 32 GB. Ruang ini tidak memadai untuk checkout dan build AOSP penuh. Jangan menjalankan repo sync penuh di Codespaces ini.
