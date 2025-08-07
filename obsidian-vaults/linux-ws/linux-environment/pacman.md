---
tags:
  - linux
  - tools
  - pacman
  - arch
  - sysadmin
aliases: ["Pacman"]
creation_date: 2025-08-06
---

# pacman: The Arch Linux Package Manager

`pacman` (Package Manager) adalah utilitas inti yang digunakan oleh semua distro berbasis Arch, termasuk [[EndeavourOS]], untuk menginstall, menghapus, dan mengelola semua paket software dari repositori resmi.

Anda jarang perlu menggunakan `pacman` secara langsung untuk instalasi sehari-hari karena [[paru]] sudah menanganinya. Namun, memahami perintah dasarnya sangat penting untuk pemeliharaan sistem.

---
## ⚙️ Cara Install
`pacman` adalah bagian dari sistem dasar Arch Linux. Ia **sudah terinstall** sejak awal di distro seperti [[EndeavourOS]]. Anda tidak perlu menginstallnya.

---
## 🚀 Perintah Penting & Umum

Semua perintah `pacman` yang melakukan perubahan pada sistem membutuhkan hak akses root (`sudo`).

- **Mengupdate Sistem:**
  *Ini adalah satu-satunya perintah update yang perlu Anda hafal.*
  > sudo pacman -Syu

  - **`-S`**: Sync (sinkronisasi).
  - **`-y`**: Refresh (perbarui) daftar paket dari server. `yy` akan memaksa refresh bahkan jika daftar terlihat baru.
  - **`-u`**: Upgrade (tingkatkan) semua paket yang sudah usang.

- **Menginstall Paket dari Repositori Resmi:**
  > sudo pacman -S nama_paket

  > *Contoh: `sudo pacman -S neovim`*

- **Menghapus Paket:**
  > sudo pacman -Rns nama_paket

  - **`-R`**: Remove (hapus).
  - **`-n`**: Menghapus file konfigurasi yang tidak dimodifikasi.
  - **`-s`**: Menghapus dependensi yang tidak lagi dibutuhkan oleh paket lain (rekursif). ==Ini sangat direkomendasikan== untuk menjaga sistem tetap bersih.

- **Mencari Paket:**
  > pacman -Ss istilah_pencarian

  > *Ini akan mencari di nama dan deskripsi paket. Tidak perlu `sudo`.*

- **Melihat Informasi Detail Paket:**
  > pacman -Si nama_paket

  > *Menampilkan versi, dependensi, ukuran, dll. dari paket di repositori.*

- **Melihat Paket yang Terinstall Secara Eksplisit:**
  > pacman -Qe

  > *Sangat berguna untuk melihat daftar "inti" dari software yang Anda pilih untuk diinstall, tanpa semua dependensinya.*

> **Tips:** Meskipun [[paru]] bisa melakukan sebagian besar tugas ini, memahami `pacman -Rns` dan `pacman -Qe` sangat berguna untuk pemeliharaan sistem tingkat lanjut.