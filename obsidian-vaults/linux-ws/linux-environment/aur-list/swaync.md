---
tags:
  - linux
  - tools
  - cli
  - gui
  - hyprland
  - wayland
  - notifications
aliases: ["SwayNC", "Notification Center"]
creation_date: 2025-08-06
---

# swaync: Notification Center for Hyprland

`swaync` is a notification daemon and control center designed specifically for wlroots-based compositors like [[Hyprland]]. It's responsible for handling all the desktop notifications from my applications (like Discord, system updates, etc.) and provides an interactive panel to view notification history.

---
## 🤔 Why It's a Good Choice
- **Wayland Native:** It's built for [[Wayland]] and integrates perfectly with [[Hyprland]], unlike older notification daemons that might have issues.
- **Highly Themable:** The look and feel of the notifications and the control center can be completely customized using CSS. This allows it to be themed by [[wallust]] to match the rest of my desktop.
- **More than just pop-ups:** It includes a control center panel that I can toggle to see missed notifications and enable a "Do Not Disturb" mode.

---
## ⚙️ How to Install
`swaync` is available on the [[AUR]].

- **Installation Command:**
  > paru -S swaync

---
## 🛠️ My Configuration
To make `swaync` work, it needs to be started automatically with Hyprland and have a keybinding to open the control center. This is all handled in my dotfiles.

- **1. Autostart:**
  *This line in my `hyprland.conf` or `Startup_Apps.conf` ensures the daemon is running when I log in.*
  > exec-once = swaync

- **2. Keybinding to Toggle Control Center:**
  *This keybinding is set in my `UserKeybinds.conf`.*
  > bind = $mainMod SHIFT, N, exec, swaync-client -t -sw
  
  > *This command toggles the notification/control center panel on and off.*

- **3. Config Files for Theming:**
  *For future customization, the main files are located here:*
  - `~/.config/swaync/config.json` (for behavior)
  - `~/.config/swaync/style.css` (for looks)

---
## 🚀 Common Commands
While I mostly interact with `swaync` via its GUI panel (toggled with `SUPER + SHIFT + N`), you can also control it from scripts using `swaync-client`.

- **To toggle the control center:**
  > swaync-client -t

- **To toggle Do Not Disturb mode:**
  > swaync-client -d

- **To close all visible notifications:**
  > swaync-client -C