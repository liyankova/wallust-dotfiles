---
tags:
  - linux
  - tools
  - cli
  - tui
  - disk-usage
  - sysadmin
aliases: ["disk space navigator"]
creation_date: 2025-08-06
---

# diskonaut: A Disk Space Navigator

`diskonaut` is a terminal-based disk usage tool that lets you visually navigate your filesystem to find what's taking up all the space. Think of it as an interactive, visual version of the `du` command, making it much easier to hunt down large files and directories.

---
## 🤔 Why It's Useful
- **Visual Treemap:** It gives you an instant visual sense of where your largest files and folders are, helping you focus your cleanup efforts.
- **Interactive Navigation:** You can "zoom" into directories to investigate further, all with keyboard shortcuts.
- **Built-in Actions:** It lets you delete unneeded files or folders directly from the TUI, which is great for quick cleanups.

---
## ⚙️ How to Install
`diskonaut` is available on the [[AUR]].

- **Installation Command:**
  > paru -S diskonaut

---
## 🚀 How to Use & Keybindings

You can either scan the directory you're currently in, or specify a path.

- **To Scan the Current Directory:**
  > diskonaut

- **To Scan a Specific Directory (like your home folder):**
  > diskonaut ~

### Keybindings Inside the App
Once the scan is complete, you'll see a treemap. You can navigate it with these keys:

-   **Arrow Keys** or **`h`/`j`/`k`/`l`**: Move the selection around.
-   **`Enter`**: "Zoom in" or enter the selected directory.
-   **`Backspace`** or **`h`** (at the top level): Go up to the parent directory.
-   **`Ctrl + d`**: Delete the selected file or folder (it will ask for confirmation). ==Use with caution!==
-   **`i`**: Show detailed information about the selected item.
-   **`?`**: Show the built-in help screen with all keybindings.
-   **`q`** or **`Ctrl + c`**: Quit the application.

> **My Workflow:** This tool is perfect for periodic system maintenance. When I feel my disk is getting full, I run `diskonaut ~` to quickly find the biggest offenders. It's especially useful for finding old, forgotten `[[Distrobox]]` images, build caches, or massive `node_modules` folders in my project directories.