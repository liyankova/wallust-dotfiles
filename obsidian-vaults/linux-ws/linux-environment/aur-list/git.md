---
tags:
  - linux
  - tools
  - cli
  - git
  - development
  - vcs
aliases: ["Git", "Version Control"]
creation_date: 2025-08-06
---

# Git: The Version Control System

`git` is a distributed version control system (VCS) that tracks changes in my project files. It's the foundation of modern software development and how I manage all my code, from personal projects and `[[wallust-dotfiles]]` to professional work.

---
## 🤔 Core Concepts in a Nutshell
Understanding the three stages helps make sense of how `git` works:

1.  **Working Directory:** The actual files and folders I'm currently editing.
2.  **Staging Area (Index):** A "waiting room" where I prepare the specific changes I want to include in my next snapshot (commit). This allows me to craft clean, focused commits.
3.  **Repository (`.git`):** The permanent, versioned history of my project, stored in the `.git` folder.

---
## ⚙️ How to Install
`git` is a fundamental development tool and is available in the core repository of every major Linux distro.

- **Installation Command (on EndeavourOS):**
  > paru -S git

---
## 🛠️ One-Time Configuration
On any new system, the first thing to do is tell `git` who you are. This information is attached to every commit you make.

- **Set your global name and email:**
  > git config --global user.name "Your Name"
  >
  > git config --global user.email "your.email@example.com"

---
## 🚀 The Daily Workflow (Essential Commands)

### Starting a Project
- **To clone an existing repository from a remote:**
  *I use SSH for my private repos on [[GitHub]].*
  > git clone git@github.com:username/repo-name.git

- **To initialize a new repository in an existing directory:**
  > git init

### The Work Cycle
This is the most common sequence of commands you'll use.

- **To see the status of your changes:**
  > git status

- **To add files to the staging area:**
  > \# Add a single file
  > git add path/to/file.js
  >
  > \# Add ALL changed files
  > git add .

- **To save your staged changes to the repository's history:**
  > git commit -m "A descriptive commit message"

### Working with Branches
- **To list all local branches:**
  > git branch

- **To create a new branch and switch to it:**
  > git checkout -b <new-branch-name>

- **To switch back to the main branch:**
  > git checkout main

### Syncing with a Remote ([[GitHub]])
- **To push your committed changes to the remote repo:**
  > git push origin <branch-name>

- **To pull the latest changes from the remote repo:**
  > git pull origin main

> **My Workflow:** While I know these core commands, for most day-to-day work, I use helper tools that make this process faster:
> - **`[[lazygit]]`**: I use this TUI for almost all my staging, committing, and branching.
> - **`[[github-cli]]` (`gh`)**: I use this for interacting with the remote on GitHub (cloning, PRs, etc.).
>
> This note serves as my reference for the fundamental commands that these powerful tools are built on.