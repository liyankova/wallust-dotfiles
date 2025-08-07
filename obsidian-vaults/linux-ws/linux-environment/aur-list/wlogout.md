---
tags:
  - linux
  - tools
  - cli
  - gui
  - hyprland
  - wayland
  - customization
  - status-bar
aliases: ["Waybar status bar"]
creation_date: 2025-08-06
---

# Waybar: The Status Bar

Waybar is a highly customizable status bar for [[Wayland]] compositors like [[Hyprland]]. It's the bar at the top (or bottom) of my screen that displays essential information like workspaces, the current time, system resource usage, and network status.

---
## 🤔 Why It's a Good Choice
- **Extremely Customizable:** Every part of the bar, from the modules it displays to their style and behavior, can be configured with JSON and CSS.
- **Scriptable Modules:** It can display the output of any custom script, which allows for endless possibilities (like showing the current song, weather, etc.).
- **Theming Integration:** Because it uses CSS for styling, it's a perfect target for [[wallust]]. This allows my status bar's colors to automatically change with my wallpaper, creating a fully cohesive desktop theme.

---
## ⚙️ How to Install
Waybar is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S waybar

---
## 🛠️ My Configuration
My Waybar setup is managed by my dotfiles and is a core part of the JaKooLit/arch-hyprland base.

- **Main Config File:** `~/.config/waybar/config.jsonc` (for defining modules and their behavior).
- **Styling File:** `~/.config/waybar/style.css` (for colors, fonts, margins, etc.).
- **Autostart:** Waybar is launched automatically via a line in my `hyprland.conf` or `Startup_Apps.conf`:
  > exec-once = waybar

---
## 🚀 Common Commands & Usecase
While I mostly just let Waybar run, there are a few useful commands for managing it.

- **To Reload Waybar after a config change:**
  *The easiest way is to kill the current instance, and Hyprland's `exec-once` logic (or a helper script) will restart it.*
  > pkill waybar
  >
  > *My dotfiles also include a keybinding (`SUPER + ALT + R`) that runs a `Refresh.sh` script, which reloads Waybar, swaync, and Rofi all at once.*

- **To Run Waybar with a different config for testing:**
  > waybar -c ~/.config/waybar/test-config.jsonc -s ~/.config/waybar/test-style.css

> **My Workflow:** My status bar is my main "at-a-glance" dashboard. The most important modules for me are the workspace indicator (to see which virtual desktop I'm on), the clock, and the system tray for background apps. The fact that its colors are automatically managed by [[wallust]] is the key to making my desktop feel complete.