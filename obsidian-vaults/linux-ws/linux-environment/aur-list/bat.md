---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
aliases: ["batcat"]
creation_date: 2025-08-06
---

# bat: A Cat Clone with Wings

`bat` is a modern replacement for the classic `cat` command. It does everything `cat` does, but with a bunch of extra features that make viewing files in the terminal a much better experience.

---
## 🤔 Why It's a Must-Have
- **Syntax Highlighting:** It automatically detects the language of a file and adds color, making code incredibly easy to read.
- **Git Integration:** It shows which lines have been added, modified, or deleted in the sidebar (the "gutter").
- **Automatic Paging:** If a file is too long to fit on one screen, `bat` automatically pipes its output into a pager like `less`, so you can scroll through it.
- **Shows Non-Printable Characters:** Makes it easy to spot weird characters or formatting issues.

---
## ⚙️ How to Install

- **On Arch/EndeavourOS (Host):**
  > paru -S bat

- **On Debian/Ubuntu (inside a [[../distrobox]] container):**
  > sudo apt install bat

  > ==**Important Note:**== On Debian/Ubuntu, the executable is named `batcat` because of a name conflict with another package. My universal `.zshrc` handles this difference automatically.

---
## 🛠️ My Configuration (`.zshrc`)
To make `bat` the default and handle the `bat`/`batcat` difference, I use this "smart alias" in my `[[.zshrc]]`.

```zsh
# Smart alias for cat, uses batcat on Ubuntu/Debian, bat on Arch
if command -v batcat &> /dev/null; then
  alias cat='batcat --paging=never'
elif command -v bat &> /dev/null; then
  alias cat='bat --paging=never'
fi
```


This means I can just type `cat` anywhere, and it will automatically use the correct, feature-rich version.

You can also set a theme for `bat` by adding an environment variable to your `.zshrc`:

> export BAT_THEME="Catppuccin-mocha"

---

## 🚀 Common Commands / Usecase

- **Basic file viewing (with all the fancy features):**
    
    > bat README.md
    
    > # Or, thanks to my alias: cat README.md
    
- **To act exactly like the original `cat` (no highlighting, no pager):** _Use the `-p` or `--plain` flag._
    
    > bat -p file1.txt file2.txt
    
- **To use `bat` as a colorizing pager for other commands:**
    
    > man zsh | bat
    
- **To list all supported languages and themes:**
    
    > bat --list-languages
    
    > bat --list-themes