---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
  - coreutils
aliases: ["less pager"]
creation_date: 2025-08-06
---

# less: The Terminal Pager

`less` is a standard and powerful terminal pager. Its job is to display text from a file or the output of another command one screen at a time, letting you scroll both forwards and backwards through the content.

It's called "less" because it's "more" than the original Unix `more` command (which couldn't scroll backwards). You use `less` constantly, as it's the default viewer for `man` pages, `git log`, `journalctl`, and many other CLI tools.

---
## 🤔 Why It's Essential
- **Handles Large Files:** It's extremely fast and memory-efficient because it doesn't read the entire file into memory at once. You can open a multi-gigabyte log file instantly.
- **Powerful Navigation:** It uses [[Vim]]-like keybindings for navigation and searching, making it feel natural for a keyboard-driven workflow.
- **Universal:** It's a core utility that exists on virtually every Linux, macOS, and Unix-like system.

---
## ⚙️ How to Install
`less` is a core utility and comes pre-installed on [[EndeavourOS]] and basically any other Linux distribution. You don't need to install it.

- **Installation Command (just in case):**
  > paru -S less

---
## 🚀 How to Use & Essential Keybindings

### Launching `less`
- **To Open a File:**
  > less /var/log/pacman.log

- **To Pipe the Output of Another Command:**
  > ls -l /usr/bin | less

### Keybindings Inside the Pager
Once you're viewing a file, you can navigate using these keys:

-   **Navigation (Vim style):**
    -   **`j`** or **`Down Arrow`**: Scroll down one line.
    -   **`k`** or **`Up Arrow`**: Scroll up one line.
    -   **`Spacebar`** or **`f`**: Scroll forward one full screen.
    -   **`b`**: Scroll backward one full screen.
    -   **`g`**: Go to the **g**inning (start) of the file.
    -   **`G`**: **G**o to the end of the file.

-   **Searching:**
    -   **`/`** `search_term`: Search forward for "search_term".
    -   **`?`** `search_term`: Search backward for "search_term".
    -   **`n`**: Go to the **n**ext search match.
    -   **`N`**: Go to the previous search match.

-   **General:**
    -   **`h`**: Show the **h**elp screen.
    -   **`q`**: **Q**uit the pager.

> **My Workflow:** I use `less` constantly without even thinking about it when reading `man` pages or checking `git log`. A common manual use is to quickly inspect a large configuration or data file without the overhead of loading it into `[[Neovim]]`. The Vim-like search and navigation make it feel like a natural, read-only extension of my editor.