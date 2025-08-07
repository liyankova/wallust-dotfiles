---
tags:
  - linux
  - tools
  - gui
  - notes
  - productivity
  - markdown
  - pkm
aliases: ["Obsidian Notes"]
creation_date: 2025-08-06
---

# Obsidian: My Second Brain

Obsidian is a powerful, local-first knowledge base and note-taking application. It works on plain Markdown files stored in a folder (a "vault") on my machine. It's the central hub for all my notes, cheat sheets, and ideas.

---
## 🤔 Key Features I Use
- **Linking:** The ability to create `[[internal links]]` between notes is its killer feature, allowing me to build a personal wiki.
- **Graph View:** The graph view visually shows the connections between my notes, helping me discover new relationships between ideas.
- **Pure Markdown:** It's all just plain text Markdown files. This means I'm never locked into a proprietary format, and I can edit my notes with any text editor, including [[AstroNvim]].
- **Extensibility:** It has a huge ecosystem of community plugins that let me add all sorts of functionality.

---
## ⚙️ Installation & Troubleshooting Journey
Getting Obsidian to run on my [[EndeavourOS]] + [[Hyprland]] + NVIDIA setup was a major challenge. Here's a summary of what we found:

1.  **The [[Flatpak]] Attempt:** My first attempt was using Flatpak. It consistently failed to launch. After solving all the `xdg-desktop-portal` issues, it still crashed with a `GPU process exited unexpectedly` error.

2.  **The [[AUR]] Attempt:** I then uninstalled the Flatpak and tried the version from the AUR (`paru -S obsidian`). It crashed with the ==exact same GPU error==.

3.  **The Root Cause:** This proved the problem wasn't Flatpak or the portals. It was a fundamental incompatibility between the **Electron framework** (which Obsidian is built on), the **proprietary NVIDIA drivers**, and **[[Wayland]]**. The app's rendering process was crashing when trying to use hardware acceleration.

4.  **The Solution:** The final, working solution was to launch the AUR version with **GPU acceleration completely disabled**. The app is fast enough for note-taking without it, and this completely bypasses the driver bug.

---
## 🛠️ My Current Setup
This is the final, stable configuration that allows Obsidian to run on my system.

- **Installation Method:**
  > \# Installed from the AUR
  > paru -S obsidian

- **Permanent Fix (The `.desktop` file):**
  *To make the `--disable-gpu` flag permanent for launching from [[Rofi]], I edited the application's shortcut file.*
  > \# 1. Copied the original system file to my local directory:
  > cp /usr/share/applications/obsidian.desktop ~/.local/share/applications/
  >
  > \# 2. Edited the `Exec` line in `~/.local/share/applications/obsidian.desktop`:
  >
  > \# FROM: Exec=obsidian %U
  > \# TO:   Exec=obsidian --disable-gpu %U

---
## 🔗 CLI Integration
To interact with my vault from the terminal, I use `[[obs-cli]]`. This allows me to search and open notes without the GUI, which is perfect for my keyboard-driven workflow.