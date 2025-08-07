---
tags:
  - linux
  - tools
  - cli
  - lua
  - neovim
  - development
  - packaging
aliases: ["LuaRocks", "Lua package manager"]
creation_date: 2025-08-06
---

# LuaRocks: The Package Manager for Lua

`LuaRocks` is the package manager for the Lua programming language. Think of it as `[[pip]]` for Python or `[[pnpm]]` for Node.js. It lets you easily install and manage reusable Lua libraries, which are called "rocks".

---
## 🤔 Why Do I Need It?
My main use case for this is **[[Neovim]]**.

While most plugins are managed by `lazy.nvim` through Git, some more complex plugins might have dependencies on external Lua libraries (especially those that need to be compiled from C) that are best installed with `luarocks`.

Having it installed makes my [[AstroNvim]] setup more robust and future-proof. It also resolves some of the warnings I saw in the `:AstroHealth` check, ensuring my editor's environment is complete.

---
## ⚙️ How to Install
`luarocks` is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S luarocks

---
## 🚀 Common Commands
You won't use this as frequently as `paru` or `pnpm`, but it's good to know the basic commands.

- **To Search for a "Rock" (package):**
  > luarocks search <package_name>
  >
  > *Example: `luarocks search lfs` (to find LuaFileSystem)*

- **To Install a "Rock":**
  *For Neovim plugins, installing locally for your user is usually the best approach.*
  > \# Install a package just for my user (recommended)
  > luarocks install --local <package_name>
  >
  > \# Install a package system-wide
  > sudo luarocks install <package_name>

- **To List Installed "Rocks":**
  > luarocks list

- **To Remove a "Rock":**
  > luarocks remove <package_name>

> **My Workflow:** I don't use `luarocks` directly very often. Its main purpose in my setup is to be available as a backend for [[Neovim]] plugins that might need it. Having it installed ensures that if I ever want to try a plugin that has a `luarocks` dependency, the installation process will be seamless.