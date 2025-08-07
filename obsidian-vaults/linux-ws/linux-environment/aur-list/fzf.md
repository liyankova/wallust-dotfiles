---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
  - fzf
  - fuzzy-finder
aliases: ["fuzzy finder"]
creation_date: 2025-08-06
---

# fzf: The Command-Line Fuzzy Finder

`fzf` is arguably one of the most powerful tools for a terminal-centric workflow. It's a general-purpose fuzzy finder that takes any list of items (files, command history, git commits, etc.), and gives you a blazing fast, interactive menu to search, filter, and select from.

It transforms static lists into an interactive experience.

---
## 🤔 Why It's Essential
- **Blazing Speed:** It's incredibly fast, even with tens of thousands of items.
- **Fuzzy Finding:** You don't have to type perfectly. `fzf` will find `GimpDesktop.conf` even if you just type `gmpdcf`.
- **Universal:** It can be piped (`|`) with almost any other command-line tool, making it a "supercharger" for your entire shell.

---
## ⚙️ How to Install
`fzf` is in the official repositories. For the best experience, it should be paired with `ripgrep` for file searching and `bat` for previews.

- **Installation Command (on EndeavourOS):**
  > paru -S --needed fzf ripgrep bat

---
## 🛠️ My Universal `.zshrc` Configuration
This is the most critical part of the setup. This block in my `[[.zshrc]]` makes `fzf` work automatically across all my environments (Host, Ubuntu, Fedora, etc.) by intelligently finding the correct paths.

```zsh
# --- FZF Configuration (Truly Universal - Path Finding Method) ---

# Find the fzf key-bindings and completion scripts automatically, wherever they are.
local FZF_KEY_BINDINGS
local FZF_COMPLETION

FZF_KEY_BINDINGS=$(find /usr/share -name "key-bindings.zsh" 2>/dev/null | head -n 1)
FZF_COMPLETION=$(find /usr/share -name "completion.zsh" 2>/dev/null | head -n 1)

# Source the files only if they were found
if [[ -n "$FZF_KEY_BINDINGS" && -f "$FZF_KEY_BINDINGS" ]]; then
  source "$FZF_KEY_BINDINGS"
fi

if [[ -n "$FZF_COMPLETION" && -f "$FZF_COMPLETION" ]]; then
  source "$FZF_COMPLETION"
fi

# Unset the temporary variables to keep the environment clean
unset FZF_KEY_BINDINGS FZF_COMPLETION

# -- FZF Options --
# Use ripgrep as the default file finder (it's faster and respects .gitignore)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
# Use bat for a colorful, syntax-highlighted preview window
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --plain {}' --preview-window 'right:50%:wrap'"

```

🚀 Common Commands & Keybindings

These keybindings are automatically enabled by the configuration above.

    Ctrl + T — Find Files

        This is the most common use. It opens fzf to let you fuzzy-find any file or directory under your current location. Pressing Enter will paste the selected path onto your command line.

    Ctrl + R — Search Command History

        Instantly search through your entire shell history. Find that complex ffmpeg command you used last week without endless scrolling.

    Alt + C — Change Directory

        Fuzzy-find a directory and instantly cd into it.

    Using with Pipes | (The Superpower)

        You can pipe the output of any command into fzf to make it interactive.

        # Interactively find and kill a process
        ps aux | fzf | awk '{print $2}' | xargs kill -9

        # Interactively checkout a git branch
        git branch | fzf | xargs git checkout