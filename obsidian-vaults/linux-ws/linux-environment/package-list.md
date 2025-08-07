---
tags:
  - linux
  - cheatsheet
  - sysadmin
  - package-management
aliases: ["Package List", "Package Management"]
creation_date: 2025-08-06
---

# My System Inventory & Package Management

*A central cheat sheet for listing all the software installed across the different layers of my system.*

---
## 👑 The Main Tool: [[pacui]]
For the **Host System (EndeavourOS)**, `pacui` is the go-to TUI (Text User Interface) for easy package management, covering both official repos and the [[AUR]].

- **To Install:**
  > paru -S pacui

- **To Use:**
  > sudo pacui

> Use its interactive menu to list installed packages, update the system, clean the cache, and other maintenance tasks.

---
## 🖥️ Manual Listing Commands

Here are the manual commands to see the inventory for each layer of our system architecture.

### Layer 1: Host System (EndeavourOS)
This layer is managed by [[pacman]] and [[paru]] for all core and CLI tools.

- To see packages you explicitly installed:
  > pacman -Qe

- To see packages only from the ==AUR==:
  > pacman -Qem

### Layer 2: GUI Apps ([[Flatpak]])
This layer is for sandboxed graphical apps to ensure stability.

- To list all installed Flatpak apps (like Obsidian, OBS, Kdenlive, Spotify):
  > flatpak list

### Layer 3: Dev Tools (Global & Isolated)
These are the toolchains and apps installed by specific package managers.

- **[[Volta]]**: To see installed [[Node.js]] versions & toolchains.
  > volta list all

- **[[pnpm]]**: To list globally installed packages.
  *Run this inside your dev container (e.g., `ubuntu-clean`)*.
  > pnpm list -g --depth=0

- **[[pipx]]**: To list isolated [[Python]] applications on the Host.
  > pipx list

### Layer 4: Containers ([[distrobox]])
This is the list of your labs and workspaces.

- **To list all created containers**:
  > distrobox list

- **To enter a specific container** (using your `~/.zshrc` aliases):
  > \# For Web Dev
  > ubuntu
  >
  > \# For AI / ML
  > llmbox
  >
  > \# For Gaming
  > gamebox
  >
  > \# For Quick Experiments
  > alpine