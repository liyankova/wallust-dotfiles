---
tags:
  - linux
  - tools
  - cli
  - tui
  - git
  - development
aliases: ["lazy git"]
creation_date: 2025-08-06
---

# lazygit: A TUI for Git

`lazygit` is a terminal user interface (TUI) for [[Git]]. It gives you a powerful, interactive dashboard for all your Git operations, turning complex, multi-step command-line actions into single keystrokes.

It's made by the same creator as [[lazydocker]] and shares a similar philosophy of making complex tools simple and fast.

---
## 🤔 Why It's Essential for My Workflow
- **Speed:** It's incredibly fast for common tasks like staging files, writing commits, pushing, pulling, and switching branches.
- **Interactive Staging:** ==This is its killer feature.== You can easily stage individual lines (`hunks`) of a file instead of the whole file, which leads to cleaner, more atomic commits.
- **Visual Overview:** It provides a great visual overview of your branch history, commit logs, and stashes, all on one screen.
- **Keyboard-Centric:** It's designed from the ground up to be used entirely with the keyboard, fitting perfectly into my workflow in [[AstroNvim]] and [[Kitty]].

---
## ⚙️ How to Install
`lazygit` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S lazygit

---
## 🚀 How to Use & Essential Keybindings

- **To Launch:**
  *Navigate to any git repository in your terminal and run:*
  > lazygit

### Keybindings Inside the App
The interface is divided into panels (Status, Files, Branches, Commits, Stash). You navigate with arrow keys and use single letters for actions.

-   **General:**
    -   **`?`**: Show the built-in help/keybinding menu.
    -   **`q`**: Quit the application.
    -   **`x`**: Open a menu of common actions for the current panel.
    -   **`ESC`**: Go back or cancel.

-   **Files Panel (Staging & Committing):**
    -   **`space`**: Stage or unstage the selected file.
    -   **`Enter`**: View the diff of the selected file. While in the diff view, you can press `space` to stage individual lines or hunks.
    -   **`d`**: Open the "discard changes" menu for the selected file.
    -   **`c`**: Commit your staged changes. A panel will pop up for your commit message.
    -   **`C`**: Commit your changes using your default editor (`nvim`).

-   **Branches Panel:**
    -   **`space`**: Checkout the selected branch.
    -   **`n`**: Create a new branch.

-   **Global Actions (works from most panels):**
    -   **`p`**: Push the current branch to the remote.
    -   **`P`**: Force push the current branch.
    -   **`u`**: Pull changes from the remote.

---
### My Workflow
I rarely type `git status` or `git add` anymore. I just run `lazygit` to get a full overview and manage my changes.

- **It's also integrated directly into [[AstroNvim]]**. I can launch it from within Neovim using the default AstroNvim mapping:
  > In Neovim Normal Mode: `<Space>gg` or `<Space>tl`

> This lets me manage my commits without ever leaving my code editor, which is incredibly efficient.