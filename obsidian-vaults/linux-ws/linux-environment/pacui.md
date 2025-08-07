---
tags:
  - linux
  - tools
  - pacman
  - arch
aliases: ["Pacui"]
creation_date: 2025-08-06
---

# pacui: Manajer Paket Interaktif

`pacui` adalah sebuah TUI (Text User Interface) yang berfungsi sebagai "pusat kendali" untuk manajer paket `pacman` dan [[AUR]] helper (seperti `paru` atau `yay`). Tujuannya adalah menyederhanakan tugas-tugas manajemen paket yang paling umum ke dalam sebuah menu yang mudah dinavigasi.

---
## ⚙️ Cara Install
Instalasi `pacui` paling mudah dilakukan melalui [[AUR]].

- **Perintah Instalasi:**
  > paru -S pacui

---
## 🚀 Cara Pakai
`pacui` harus dijalankan dengan hak akses `sudo` karena ia melakukan operasi pada level sistem.

- **Perintah untuk Menjalankan:**
  > sudo pacui

Setelah dijalankan, Anda akan disambut dengan menu utama berbasis angka. Cukup ketik angka yang sesuai dengan aksi yang ingin Anda lakukan, lalu tekan `Enter`.

---
## 📝 Menu & Fungsi Utama
Berikut adalah beberapa fungsi yang paling sering digunakan di dalam `pacui`:

- **`1` - Update System:** Menjalankan `paru -Syu` (atau `yay`) untuk mengupdate semua paket dari repositori resmi dan AUR.
- **`2` - Maintain System:** Ini adalah menu pemeliharaan, berisi opsi untuk:
  - Membersihkan *cache* paket yang sudah tidak terpakai.
  - Menghapus dependensi yatim piatu (*orphans*).
- **`4` - List Installed Packages:** ==Ini adalah fungsi yang paling berguna untuk inventaris==. Opsi ini akan menampilkan daftar semua paket yang terinstall secara eksplisit, dipisahkan antara paket dari repositori resmi dan paket dari AUR. Jauh lebih mudah dibaca daripada `pacman -Qe`.
- **`5` - Remove Packages:** Membuka antarmuka interaktif untuk mencari dan memilih paket yang ingin Anda hapus.
- **`6` - Search for Packages:** Mencari paket di repositori dan AUR.

> **Tips:** `pacui` adalah alat yang sangat aman. Setiap kali ia akan menjalankan sebuah perintah `pacman` atau `paru`, ia akan menampilkannya terlebih dahulu di layar untuk Anda konfirmasi. Ini membuatnya menjadi alat yang bagus untuk belajar sambil jalan.