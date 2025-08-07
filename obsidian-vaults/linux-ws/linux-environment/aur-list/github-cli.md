---
tags:
  - linux
  - tools
  - cli
  - git
  - github
  - development
  - devops
aliases: ["gh", "GitHub CLI"]
creation_date: 2025-08-06
---

# gh: The Official GitHub CLI

`gh` is the official command-line tool for GitHub. It brings pull requests, issues, releases, and other GitHub features to your terminal, so you can do all your work in one place without having to open the browser.

It's the ultimate tool for a keyboard-driven GitHub workflow.

---
## 🤔 Why It's Essential
- **Speeds up workflow:** It dramatically speeds up the process of managing my private repos like `[[wallust-dotfiles]]` and contributing to other projects.
- **Full PR Management:** I can list, view, check out, and even merge pull requests, all from the comfort of my terminal.
- **Seamless Integration:** It works perfectly with my existing `[[git]]` commands.

---
## ⚙️ How to Install & Set Up

- **Step 1: Install the Package**
  *`gh` is available in the Arch `community` repository.*
  > paru -S github-cli

- **Step 2: Authenticate with Your GitHub Account**
  *This is a one-time setup process that links the CLI to your account securely.*
  > gh auth login

  > *It will walk you through a few questions. The recommended options are:*
  > - *What account do you want to log into? -> **GitHub.com***
  > - *What is your preferred protocol for Git operations? -> **SSH***
  > - *It will then ask you to open a browser to authorize the application.*

---
## 🚀 Common Commands / Usecase
The CLI is structured around nouns like `repo`, `pr`, `issue`, etc.

### Repositories (`repo`)
- **To clone one of your own repositories:**
  *No need to copy the full URL.*
  > gh repo clone liyankova/wallust-dotfiles

- **To view the current repository in the browser:**
  > gh repo view --web

- **To create a new repository on GitHub from your current local folder:**
  > gh repo create

### Pull Requests (`pr`)
- **To list open pull requests in the current repo:**
  > gh pr list

- **To check out a pull request locally to test it:**
  > gh pr checkout <pr_number>

- **To create a new pull request from your current branch:**
  *This opens an interactive guide to set the title, body, etc.*
  > gh pr create

- **To view the changes ("diff") of a PR in your terminal:**
  > gh pr diff <pr_number>

### Issues (`issue`)
- **To list open issues:**
  > gh issue list

- **To create a new issue:**
  > gh issue create

> **My Workflow:** The most powerful flow is managing contributions. I can `gh pr checkout 123` to test someone's changes, and after pushing my own branch, I can run `gh pr create --fill --web` to quickly open a pre-filled Pull Request page in my browser for final review.