---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
aliases: ["eza ls"]
creation_date: 2025-08-06
---

# eza: A Modern `ls` Replacement

`eza` is a modern, feature-rich replacement for the standard `ls` command. It's written in Rust, making it fast, and it adds a ton of quality-of-life improvements for viewing files in the terminal.

---
## 🤔 Why It's Better Than `ls`
- **Icons:** It can display file-type specific icons directly in the terminal (requires a Nerd Font, which I have).
- **Git Status:** It can show the Git status of files and directories (new, modified, staged) right in the file listing.
- **Tree View:** It has a built-in `tree` view, so you don't need a separate command.
- **Better Colors:** The default color-coding is much more sensible and readable.

---
## ⚙️ How to Install
The installation method varies by distro, making it a good example of why my universal `[[.zshrc]]` is useful.

- **On Arch/EndeavourOS (Host) & Arch-based containers:**
  > paru -S eza

- **On Fedora (like `llm-box`):**
  > sudo dnf install eza

- **On Debian/Ubuntu (like `ubuntu-clean`):**
  *This requires adding a third-party repository.*
  > sudo mkdir -p /etc/apt/keyrings
  >
  > wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
  >
  > echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
  >
  > sudo apt update
  >
  > sudo apt install -y eza

- **On Alpine (like `alpine-lab`):**
  > sudo apk add eza

---
## 🛠️ My Configuration (`.zshrc`)
To make `eza` the default `ls` command, I use this "smart alias" block in my `[[.zshrc]]`. This ensures my muscle memory always works, even on systems where `eza` isn't installed.

```zsh
# -- eza (ls replacement) --
if command -v eza &> /dev/null; then
    alias ls='eza --icons'
    alias l='eza -l --icons'
    alias la='eza -la --icons'
    alias lt='eza --tree --level=2 --icons'
else
    alias ls='ls --color=auto'
fi

```

🚀 Common Commands / Usecase

Thanks to the aliases, I mostly just use my normal ls commands.

    Simple Listing (with Icons):

        ls

    Long Listing (details, permissions, icons):

        l

    Long Listing (including hidden files):

        la

    Tree View (2 levels deep):

        lt

    To see Git status alongside the file listing:

        l --git

        This will show N for new, M for modified, etc., next to each file. ==Incredibly useful== for a quick status check.