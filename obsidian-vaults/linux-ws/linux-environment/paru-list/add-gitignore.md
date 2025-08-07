---
tags:
  - git
  - cli
  - tools
  - development
aliases: ["gitignore generator", "git ignore"]
creation_date: 2025-08-06
---

# add-gitignore

`add-gitignore` is a super handy CLI tool that saves you from manually creating `.gitignore` files for your projects. It fetches up-to-date templates from GitHub's official collection and creates the file for you.

---
## 🤔 Why It's Useful
- **Saves Time:** No more googling for the right `.gitignore` template for Node.js, Python, etc.
- **Comprehensive:** Supports hundreds of templates for different languages, frameworks, and tools.
- **Combinable:** You can combine multiple templates into a single `.gitignore` file (e.g., for a project using both Node and Python).

---
## ⚙️ How to Install
There are two main ways to install this, depending on the environment.

- **On the Host (EndeavourOS):**
  *This is the version you currently have installed.*
  > paru -S add-gitignore

- **Inside a Dev Container (like `ubuntu-clean`):**
  *This is a good alternative if you want to keep your dev tools inside the container.*
  > pnpm add -g add-gitignore

---
## 🚀 Common Commands / Usecase
The workflow is simple and usually done right after `git init`.

- **Interactive Mode (Recommended for exploring):**
  *Just run the command without any arguments inside your project folder.*
  > add-gitignore
  
  > *This will open an interactive fuzzy finder where you can search for and select one or more templates (e.g., "Node", "React", "JetBrains").*

- **Direct Mode (When you know what you want):**
  *Provide the template names directly. They are case-sensitive.*
  > add-gitignore Node Nextjs Python

  > *This command creates a single `.gitignore` file containing the rules for all three templates.*

- **To List All Available Templates:**
  > add-gitignore --list

> **My Workflow:**
> For a typical new project, my steps are:
> 1. `git init`
> 2. `add-gitignore Node VisualStudioCode JetBrains` to cover the runtime and common IDEs.
> 3. `git add .gitignore && git commit -m "chore: add .gitignore"`