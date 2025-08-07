---
tags:
  - linux
  - tools
  - cli
  - tui
  - file-manager
  - rust
aliases: ["yazi file manager"]
creation_date: 2025-08-06
---

# yazi: A Blazing Fast Terminal File Manager

`yazi` is a next-generation terminal file manager written in Rust. It's designed to be extremely fast, responsive, and visually rich, especially when it comes to file previews.

It combines the classic three-pane "Miller column" layout of [[ranger]] with a modern, asynchronous architecture.

---
## 🤔 Why It's My File Manager of Choice
- **Blazing Speed:** It's incredibly fast, thanks to being written in Rust. Navigating huge directories and loading previews feels instant, and the UI never freezes.
- **High-Fidelity Previews:** Its killer feature is the high-resolution image, video, and even PDF previews, which work perfectly inside [[Kitty]]'s graphics protocol.
- **Modern & Clean:** It has a clean interface and sensible [[Vim]]-like keybindings, while still being highly customizable through a simple `yazi.toml` config file.
- **Built-in `fzf`:** Uses [[fzf]] for its fuzzy-finding capabilities, which fits perfectly with my existing workflow.

---
## ⚙️ How to Install
`yazi` is available on the [[AUR]]. For the best experience, it's recommended to install some optional dependencies for file previews.

- **Installation Command:**
  > paru -S yazi

- **For Better Previews (Highly Recommended):**
  > paru -S --needed ffmpegthumbnailer unarchiver poppler
  >
  > *`ffmpegthumbnailer` for video thumbnails, `unarchiver` for archive contents, and `poppler` for PDF previews.*

---
## 🚀 How to Use & Essential Keybindings

- **To Launch:**
  > yazi

### Keybindings Inside the App
The navigation is very intuitive if you're used to Vim.

- **Navigation:**
  - **`k` / `j`** or **`Up` / `Down`**: Move up and down the list.
  - **`h` / `l`** or **`Left` / `Right`**: Move between panes (parent directory / enter directory or open file).
  - **`g` `g`** and **`G`**: Go to the very top and bottom of the list.

- **File Operations:**
  - **`d` `d`**: Delete the selected file/folder (moves to system trash).
  - **`r`**: Rename the selected item.
  - **`y`**: Yank (Copy) the selected item.
  - **`x`**: Cut the selected item.
  - **`p`**: Paste the yanked/cut item(s).

- **Searching & Filtering:**
  - **`/`**: Filter files by name in the current directory.
  - **`f`**: Fuzzy-find files recursively from the current directory using [[fzf]].

- **UI & Tabs:**
  - **`.`** (period): Toggle visibility of hidden files.
  - **`Tab`**: Create a new tab.
  - **`Ctrl + q`**: Close the current tab.
  - **`?`**: Show the help menu with all keybindings.
  - **`q`**: Quit the application.

> **My Workflow:** I use `yazi` for all my day-to-day file management. It's bound to `SUPER + E` in my [[Hyprland]] config for quick access. The high-res image preview is a game changer for sorting screenshots and assets for content creation.