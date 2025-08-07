---
tags:
  - linux
  - tools
  - cli
  - shell
  - customization
  - sysadmin
aliases: ["fastfetch", "system info"]
creation_date: 2025-08-06
---

# fastfetch: A Speedy System Information Tool

`fastfetch` is a fast and highly customizable tool for fetching and displaying system information in the terminal. It's a modern, more performant alternative to the classic `neofetch`.

It's the command that generates the system summary (OS, Kernel, WM, hardware, etc.) alongside an ASCII logo of the distribution.

---
## 🤔 Why I Use It
- **Performance:** It's written in C and is significantly faster than `neofetch`, which is a shell script.
- **Extremely Configurable:** I can control exactly what information is displayed, its order, and its formatting through a simple JSONC config file.
- **Great for Screenshots:** It's perfect for taking a quick screenshot of my system setup to share or for my own reference.

---
## ⚙️ How to Install
`fastfetch` is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S fastfetch

---
## 🛠️ My Configuration
My setup for `fastfetch` is customized to always use a specific configuration file, which is handled by an alias in my `[[.zshrc]]`.

- **1. The Alias:**
  *This alias in my `[[.zshrc]]` ensures that whenever I type `ff`, it runs `fastfetch` with my personal config.*
  > alias ff="fastfetch -c $HOME/.config/fastfetch/config.jsonc"

- **2. The Config File:**
  *All my customizations (like which modules to show, what ASCII logo to use, etc.) are stored here:*
  > `~/.config/fastfetch/config.jsonc`

---
## 🚀 Common Commands / Usecase

- **To Run with My Custom Config:**
  *Thanks to my alias, I just need to run:*
  > ff

- **To Run with Defaults (ignoring my alias):**
  *The backslash `\` temporarily disables the alias for a single command.*
  > \fastfetch

- **To Generate a New Default Config File:**
  *This is very useful for starting a new customization. It prints a default config to the terminal, which you can then save to a file.*
  > fastfetch --gen-config

> **My Workflow:** I use the `ff` alias whenever I want a quick snapshot of my current system state (OS, kernel version, uptime, packages). It's a quick way to verify what environment I'm in, especially when jumping between my [[EndeavourOS]] host and [[../distrobox]] containers.