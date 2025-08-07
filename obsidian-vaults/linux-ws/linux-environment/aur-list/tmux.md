---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
  - multiplexer
  - tmux
aliases: ["terminal multiplexer", "tmux session"]
creation_date: 2025-08-06
---

# tmux: The Terminal Multiplexer

`tmux` is a terminal multiplexer. It lets you create persistent terminal sessions with multiple "windows" (tabs) and "panes" (splits), all within a single [[Kitty]] window. Think of it as a window manager, but for your terminal.

---
## 🤔 The Killer Feature: Session Persistence
The single most important feature of `tmux` is its ability to **detach** and **re-attach** sessions.

You can start a long-running process (like a server, a big compilation, or an SSH session), detach from the `tmux` session, and close your terminal entirely. Hours or days later, you can open a new terminal and re-attach to that session, and all your programs will still be running exactly as you left them. ==This is a game-changer==.

### `tmux` vs. `[[Kitty]]` Splits/Tabs
This can be confusing at first. Why use `tmux` when [[Kitty]] already has its own tabs and splits?

- **Kitty's Role:** Kitty's splits and tabs are great for organizing my *visual workspace* on my local machine.
- **tmux's Role:** `tmux` is for organizing my *logical workflow* and ensuring **persistence**. I often run a single, fullscreen Kitty window with a `tmux` session inside it. This way, if Kitty or my graphical session crashes, my work inside `tmux` is completely safe. It's also essential for maintaining sessions over SSH.

---
## ⚙️ How to Install
`tmux` is in the official Arch repositories.

- **Installation Command:**
  > paru -S tmux

---
## 🛠️ My Configuration
My `tmux` setup is heavily customized using the `[[oh-my-tmux]]` framework, which is managed by my dotfiles. This provides a much nicer set of default keybindings, a beautiful status bar, and other quality-of-life improvements.

- **Main Config File:** `~/.tmux.conf`
- **Oh My Tmux Config:** `~/.tmux.conf.local`

---
## 🚀 How to Use & Essential Keybindings
`tmux` is controlled by a **Prefix** key, followed by another key. My `oh-my-tmux` setup likely sets the prefix to **`Ctrl + a`**. To send a literal `Ctrl + a`, you press it twice (`Ctrl + a`, `a`).

*(Press the Prefix, release it, then press the next key.)*

### Session Management
- **Start a new named session:**
  > tmux new -s my_session_name

- **Attach to the last session:**
  > tmux attach

- **List running sessions:**
  > tmux ls

- **Detach from the current session:**
  > `Prefix` + `d`

### Windows (Tabs)
- **New Window:** `Prefix` + `c`
- **Next / Previous Window:** `Prefix` + `n` / `Prefix` + `p`
- **Go to a specific window (e.g., #2):** `Prefix` + `2`
- **Rename Window:** `Prefix` + `,`

### Panes (Splits)
- **Vertical Split:** `Prefix` + `%`
- **Horizontal Split:** `Prefix` + `"`
- **Navigate between panes:** `Prefix` + `Arrow Keys`
- **Close the current pane:** `Prefix` + `x` (with confirmation)