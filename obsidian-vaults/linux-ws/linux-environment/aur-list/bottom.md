---
tags:
  - linux
  - tools
  - cli
  - tui
  - sysadmin
  - monitoring
aliases: ["btm"]
creation_date: 2025-08-06
---

# bottom (btm): A System Monitor

`bottom` is a cross-platform graphical process and system monitor that runs in the terminal. It's a modern alternative to tools like `htop` or [[btop]], written in Rust for performance.

It gives a quick, customizable, at-a-glance overview of your system's health, including CPU, memory, network, and process information.

---
## 🤔 Why It's Useful
- **Visual Overview:** Provides a clean dashboard of your system's performance without needing a full GUI application.
- **Customizable:** You can change the layout, widgets, and color scheme to your liking.
- **More than just processes:** It also shows useful information like disk I/O, network traffic, and temperature sensor data.

---
## ⚙️ How to Install
`bottom` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S bottom

---
## 🚀 How to Use & Keybindings
`bottom` is a TUI (Text User Interface), so you interact with it using keyboard shortcuts.

- **To Launch:**
  > btm

### Keybindings Inside the App
-   **`k` / `j`** or **`Up` / `Down`**: Navigate the process list.
-   **`/`**: Start filtering/searching for a specific process.
-   **`Tab`**: Cycle between grouped and ungrouped process views.
-   **`s`**: Open the sort-by menu (to sort by CPU, memory, PID, etc.).
-   **`d` `d`** (press 'd' twice): Kill the selected process (with confirmation).
-   **`g`**: Group/ungroup the selected widget.
-   **`?`**: Show the built-in help screen with all keybindings.
-   **`q`**: Quit the application.

---
### My Workflow
While I have [[btop]] set up as my main, highly customized system monitor, `bottom` is integrated directly into my [[AstroNvim]] configuration as a quick-access tool.

- **I can launch it from within Neovim** using the default AstroNvim mapping:
  > In Neovim Normal Mode: `<Space>tt`

> This is very useful for quickly checking system load or finding a runaway process without ever leaving my code editor.