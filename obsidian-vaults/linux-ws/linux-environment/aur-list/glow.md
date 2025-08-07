---
tags:
  - linux
  - tools
  - cli
  - markdown
  - productivity
aliases: ["glow markdown"]
creation_date: 2025-08-06
---

# glow: A Glamorous Markdown Renderer

`glow` is a terminal-based tool that renders Markdown files beautifully. It's for those times you want to read a `README.md` without leaving your terminal, but you want it to look good—not just be a wall of text from `cat` or `bat`.

It properly formats headings, lists, code blocks, quotes, and tables with a nice color scheme.

---
## 🤔 Why It's Useful
- **Readability:** Turns plain Markdown text into a formatted, easy-to-read document right in your terminal.
- **Convenience:** Perfect for quickly previewing `README.md` files when exploring a new Git repo.
- **Remote Files:** It can fetch and render Markdown directly from a URL or a public GitHub repository.
- **Stashing:** It has a built-in bookmarking ("stashing") feature to save interesting Markdown files for later.

---
## ⚙️ How to Install
`glow` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S glow

---
## 🚀 Common Commands / Usecase
`glow` automatically uses a pager (like `less`) for long files, so you can navigate with arrow keys or `j`/`k` and quit with `q`.

- **To View a Local Markdown File:**
  > glow README.md

- **To View a Markdown File from the Web:**
  > glow https://raw.githubusercontent.com/charmbracelet/glow/master/README.md

- **To View a Repo's README on GitHub:**
  > glow github.com/AstroNvim/AstroNvim

- **To Change the Style:**
  *`glow` supports different themes. `dark` and `light` are the defaults, but you can create your own.*
  > \# Use a specific style for one-time viewing
  > glow -s light README.md
  >
  > \# You can also set a default style in your ~/.zshrc
  > export GLOW_STYLE="dark"

- **To "Stash" (Bookmark) a Markdown File:**
  > \# Stash the file you're currently viewing
  > glow -s stash README.md
  >
  > \# View your list of stashed files
  > glow stash

> **My Workflow:** This has become my default way to check a project's documentation. After cloning a new repo, the first thing I do is run `glow README.md`. It gives me a clean, formatted overview of the project instantly.