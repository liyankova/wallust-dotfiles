---
tags:
  - linux
  - tools
  - cli
  - shell
  - zsh
  - productivity
  - navigation
aliases: ["zoxide cd"]
creation_date: 2025-08-06
---

# zoxide: A Smarter `cd` Command

`zoxide` is a blazing fast "smart" directory jumper, written in Rust. It completely replaces the need for the traditional `cd` command for most navigation.

It works by keeping a database of the directories you visit, ranked by "frecency" (a combination of **fre**quency and **rec**ency). This allows you to jump to your most used folders with just a small part of their name.

---
## 🤔 Why It's a Game Changer
- **No more `cd ../../..`** or typing long, tedious paths. Just `z project` instead of `cd ~/gitclone/my-super-long-project-name`.
- **It learns your habits.** The more you use your shell, the smarter `zoxide` gets at predicting where you want to go.
- **`fzf` Integration:** It comes with a powerful interactive mode that uses [[fzf]] to fuzzy-search your directory history.

---
## ⚙️ How to Install
`zoxide` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S zoxide

---
## 🛠️ My `.zshrc` Configuration
For `zoxide` to work its magic, it needs to be "hooked" into your shell. This is a critical one-time setup step.

- **Add this line to your `[[.zshrc]]` file** (it should already be in your "TOOL INITIALIZATIONS" section):
  > eval "$(zoxide init zsh)"

> This line initializes `zoxide` for [[Zsh]] and creates the all-important `z` alias.

---
## 🚀 Common Commands / Usecase
Once hooked into your shell, you primarily interact with `zoxide` through the `z` command.

- **To Jump to a Directory:**
  *Just type `z` followed by a part of the directory's name.*
  > \# Jump to your hyprland config folder
  > z hypr
  >
  > \# Jump to your dotfiles repo
  > z dotfiles

- **To Go to the Previous Directory (like `cd -`):**
  > z -

- **Interactive Search (The Killer Feature):**
  *This uses `fzf` to give you a searchable list of your most frequent directories.*
  > zi
  >
  > *Note: The `zi` alias is often set up by the `zoxide init` script. If it doesn't work, you can use `z -i`.*

- **To Manage the Database:**
  > \# See the ranked list of your directories
  > zoxide query -l
  >
  > \# Remove a directory from the database if it's no longer needed
  > zoxide remove /path/to/unwanted/directory

> **My Workflow:** The `z` command has completely replaced `cd` for me. I can jump between `~/dotfiles`, `~/.config/hypr`, and my various project folders instantly. The interactive `zi` command is my go-to when I'm not 100% sure of the directory name.