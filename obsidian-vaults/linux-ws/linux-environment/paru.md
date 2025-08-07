---
tags:
  - linux
  - tools
  - pacman
  - arch
  - aur
aliases: ["Paru AUR Helper"]
creation_date: 2025-08-06
---

[[paru-list/paru-list|paru-list]]
# paru: Your AUR Helper

`paru` is your all-in-one command for managing software on an Arch-based system like [[EndeavourOS]]. Think of it as a "wrapper" around the standard [[pacman]] package manager, but with added superpowers to easily and safely handle the [[AUR]].

It was created by one of the original developers of `yay` and is written in Rust, which makes it extremely fast.

---
## ⚙️ How to Install
Since `paru` is not in the official repositories, you need to build it from the [[AUR]]. This is a one-time manual process.

- **Step 1: Install Base Dependencies**
  > sudo pacman -S --needed base-devel git

- **Step 2: Clone, Build, and Install `paru`**
  > git clone https://aur.archlinux.org/paru.git
  >
  > cd paru
  >
  > makepkg -si

- **Step 3 (Optional): Clean Up**
  > cd .. && rm -rf paru

---
## 🚀 Common Commands

Here are the main commands you'll use day-to-day.

- **To Update Everything (Repos + AUR):**
  > paru
  
  > *Yep, that's it. Running `paru` with no arguments is the same as running `paru -Syu`. It's the only update command you'll ever need.*

- **To Install a Package:**
  > paru -S package_name

  > *This command is smart. If the package is in the official repos, it acts just like `pacman`. If it's only in the [[AUR]], it will find it, ask you to review the build files, and then automatically build and install it for you.*
  > *Example: `paru -S spotify-tui`*

- **To Remove a Package:**
  > paru -Rns package_name

  > *This uses the exact same flags as `pacman`. The `-Rns` flag is recommended as it removes the package, its dependencies that aren't needed by anything else (`-n`), and its system-wide configuration files (`-s`).*

- **To Search for a Package:**
  > paru -Ss search_term

  > *This will search both the official repositories and the AUR at the same time, giving you a complete list of what's available.*

> **Key Takeaway:** You can essentially replace `sudo pacman` with `paru` for most of your daily tasks (`-S`, `-R`, `-Ss`). `paru` will handle the permissions and AUR logic for you automatically.