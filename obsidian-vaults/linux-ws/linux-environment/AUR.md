---
tags:
  - linux
  - arch
  - packaging
  - aur
aliases: ["Arch User Repository"]
creation_date: 2025-08-06
---

# AUR: Arch User Repository

AUR (Arch User Repository) adalah repositori *software* yang dikelola oleh komunitas untuk distro berbasis Arch seperti [[EndeavourOS]] dan [[CachyOS]]. Ini adalah salah satu fitur terkuat dan paling disukai dari ekosistem Arch.

---
## 📜 Apa Isinya?
AUR berisi ribuan paket yang tidak tersedia di repositori resmi. Ini bisa berupa:
- Software *proprietary* atau non-open source (seperti `spotify`, `visual-studio-code-bin`).
- Versi *bleeding-edge* atau `-git` dari sebuah program.
- Alat-alat bantu niche atau yang dibuat oleh komunitas.
- Tema, ikon, dan paket kustomisasi lainnya.

Pada dasarnya, jika sebuah software ada untuk Linux, kemungkinan besar ia ada di AUR.

---
## 🛠️ Bagaimana Cara Kerjanya?
AUR tidak menyimpan paket yang sudah jadi. Sebaliknya, ia menyimpan "resep" untuk membuat paket tersebut, yang disebut `PKGBUILD`.

Ketika Anda menginstall sesuatu dari AUR (misalnya dengan `paru`), inilah yang terjadi di belakang layar:
1.  `paru` mengunduh file `PKGBUILD` dari AUR.
2.  Ia membaca "resep" tersebut untuk mengetahui dependensi apa yang dibutuhkan dan dari mana *source code*-nya harus diunduh.
3.  Ia mengunduh *source code* dari situs resmi developernya.
4.  Ia membangun (mengkompilasi) *source code* tersebut menjadi paket Arch (`.pkg.tar.zst`) di komputer Anda.
5.  Terakhir, ia menginstall paket yang baru saja dibuat itu menggunakan `pacman`.

---
## 🚀 Cara Menggunakan (dengan [[paru]])
`paru` adalah "pembantu" Anda untuk AUR. Ia mengotomatiskan semua proses di atas.

- **Mencari paket di AUR (dan repo resmi):**
  > paru -Ss <nama_paket>
  >
  > *Contoh: `paru -Ss spotify-tui`*

- **Menginstall paket dari AUR:**
  > paru -S <nama_paket>
  >
  > *Contoh: `paru -S spotify-tui`*

- **Mengupdate semua paket (termasuk dari AUR):**
  > paru -Syu
  >
  > *Atau cukup `paru` tanpa argumen.*

> **Penting:** Karena paket AUR dibangun dari *source code*, proses instalasinya terkadang bisa memakan waktu lebih lama dibandingkan paket dari repositori resmi.