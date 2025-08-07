---
tags:
  - linux
  - tools
  - cli
  - development
  - automation
  - build-tool
aliases: ["just command runner"]
creation_date: 2025-08-06
---

# just: A Modern Command Runner

`just` is a handy command runner for saving and running project-specific commands. Think of it as a simpler, more modern version of `make`, or a language-agnostic alternative to the `scripts` section in a `package.json` file.

It's written in Rust, so it's incredibly fast.

---
## 🤔 Why It's Useful
- **A Single, Consistent Interface:** It provides a unified way to run common commands (`build`, `test`, `lint`) across all my different projects, whether they are [[React]], [[Astro]], or Python. The command is always just `just <task>`.
- **Clean Syntax:** The `justfile` syntax is clean, easy to read, and doesn't have the weird quirks of Makefiles (like requiring tabs).
- **Self-Documenting:** Running `just --list` in a project directory shows all available commands and their comments, so I never have to guess or look inside a `package.json`.

---
## ⚙️ How to Install
`just` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S just

---
## 🛠️ How to Use: The `justfile`
`just` is configured using a file named `justfile` (or `Justfile`) in the root of your project.

- **Step 1: Create a `justfile` in your project's root directory.**
  > nvim justfile

- **Step 2: Define your "recipes" (commands).**
  *Here's an example `justfile` for a typical web project:*
  ```makefile
  # My Project Commands

  # Default command to run when `just` is called without arguments
  default: dev

  # Install all project dependencies using pnpm
  install:
      pnpm install

  # Run the development server
  dev:
      pnpm dev

  # Build the project for production. Runs the `install` recipe first.
  build: install
      pnpm build

  # Run the linter and try to fix issues
  lint:
      pnpm lint --fix

  # Clean the build artifacts
  clean:
      rm -rf dist .astro .next build
```


```

## 🚀 Common Commands

All commands are run from the directory containing the `justfile`.

- **To List all available commands (recipes):**
    
    > just --list
    
- **To Run a specific command:**
    
    > just build
    
- **To Run the default command (in our example, this runs `dev`):**
    
    > just