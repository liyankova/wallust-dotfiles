---
tags:
  - linux
  - tools
  - cli
  - dotfiles
  - sysadmin
aliases: ["GNU Stow"]
creation_date: 2025-08-06
---

# stow: A Symlink Farm Manager

`stow` is a simple yet powerful utility for managing "symlink farms". In my workflow, its main job is to manage my dotfiles.

The core idea is to keep all my configuration files neatly organized in a single directory (my `~/dotfiles` Git repo) and then use `stow` to create symbolic links (symlinks) from that directory to the correct locations in my home folder.

---
## 🤔 Why It's the Best Approach for Me
- **Centralized & Version Controlled:** All my configs live in one place, backed by Git. No more hunting for files.
- **No More Manual `ln -s`:** It automates the creation of dozens of symlinks, including creating parent directories as needed.
- **Modular:** I can manage my configs in "packages". I can `stow hypr` without affecting my `nvim` setup.
- **Easy New System Setup:** On a fresh install, I just need to clone my dotfiles repo and run a single `stow` command to deploy my entire environment. ==This is its killer feature.==

---
## ⚙️ How to Install
`stow` is a standard utility available in the official repositories.

- **Installation Command:**
  > paru -S stow

---
## 🛠️ The Directory Structure (The Magic Trick)
`stow`'s power comes from its directory structure. The structure inside your `stow` directory (e.g., `~/dotfiles`) must **mirror the target directory structure** starting from your home folder (`~`).

- **Example Structure inside `~/dotfiles`:**

dotfiles/
├── kitty/
│   └── .config/
│       └── kitty/
│           └── kitty.conf
├── nvim/
│   └── .config/
│       └── nvim/
│           └── (all AstroNvim configs...)
└── zsh/
└── .zshrc

- **How it Works:** When I stand in `~/dotfiles` and run `stow kitty`, `stow` looks inside the `kitty` folder. It sees the path `.config/kitty/kitty.conf` and creates a symlink from `~/dotfiles/kitty/.config/kitty/kitty.conf` to `~/.config/kitty/kitty.conf`.

---
## 🚀 Common Commands / Usecase
All commands should be run from **inside** your main dotfiles directory (`cd ~/dotfiles`).

- **To "Install" or create the symlinks for packages:**
> \# Stow a single package
> stow nvim
>
> \# Stow multiple packages at once
> stow kitty nvim zsh hypr

- **To "Uninstall" or delete the symlinks:**
> stow -D nvim
>
> \# The -D flag means --delete

- **To "Re-stow" or update the links:**
*This is useful after adding a new file to an existing package.*
> stow -R nvim
>
> \# The -R flag means --restow

> **My Workflow:** The most powerful command is using a wildcard to stow everything at once. After cloning my repo and restructuring it, I just run this from `~/dotfiles`:
> > stow */