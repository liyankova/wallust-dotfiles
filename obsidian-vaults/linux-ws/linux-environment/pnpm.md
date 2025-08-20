---
tags:
  - linux
  - tools
  - nodejs
  - javascript
  - pnpm
aliases: ["pnpm package manager"]
creation_date: 2025-08-06
---
?
# pnpm: Performant npm

`pnpm` is a fast, disk space-efficient package manager for Node.js projects. It's my default choice over `npm` or `yarn` for several key reasons.

---
## 🤔 Why Use pnpm?

- **Solves the `node_modules` problem:** Instead of copying every package into every project's `node_modules` folder, pnpm uses a single, global, content-addressable store. It then uses hard links and symlinks to create a `node_modules` folder for each project.
  - ==This saves a massive amount of disk space==. If 10 projects use the same version of React, it's only stored on your disk once.
- **Strictness:** It creates a non-flat `node_modules` directory. This means your code can only access dependencies that are explicitly listed in your `package.json`, preventing phantom dependency bugs.
- **Speed:** It's generally faster than its competitors, especially on subsequent installs when packages are already in the global store.

---
## ⚙️ How to Install
In my setup, `pnpm` is not installed directly. It's managed by [[Volta]]. This is the recommended approach.

- **Installation Command (via Volta):**
  > volta install pnpm

  > *This command installs the latest version of pnpm and makes it available globally, but in a way that's managed and isolated by Volta.*

---
## 🚀 Common Commands

The commands are very similar to `npm`, making it easy to switch.

- **To Install All Dependencies for a project:**
  > pnpm install

- **To Add a New Dependency:**
  > pnpm add package_name
  >
  > *Example: `pnpm add react`*

- **To Add a New Development Dependency:**
  > pnpm add -D package_name
  >
  > *Example: `pnpm add -D tailwindcss`*

- **To Run a Script from `package.json`:**
  > pnpm run dev
  >
  > *Or even shorter: `pnpm dev`*

- **To Remove a Dependency:**
  > pnpm remove package_name

- **To Install a Global Tool:**
  > pnpm add -g package_name
  >
  > *Example (inside my `ubuntu-clean` container): `pnpm add -g vite`*

> **My Workflow:** I use `pnpm` exclusively inside my development containers like `[[ubuntu-clean]]`. This keeps all my project dependencies and globally installed Node.js tools completely separate from my Host system.