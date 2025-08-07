---
tags:
  - linux
  - wayland
  - hyprland
  - window-manager
aliases: ["Hyprland WM"]
creation_date: 2025-08-06
---

# Hyprland: The Tiling Window Manager

Hyprland is a dynamic, tiling Wayland compositor that's known for its smooth animations and extensive customization options. It's the core of my graphical desktop environment on [[EndeavourOS]].

---
## 🎯 Why I Use Hyprland

- **Keyboard-Centric Workflow:** Its main strength is allowing me to manage all my windows, workspaces, and applications almost entirely from the keyboard. This is a huge boost for productivity and fits the "keyboard ninja" philosophy.
- **Aesthetics & Animations:** Unlike more traditional tiling managers, Hyprland provides fluid animations for opening, closing, and moving windows, which makes the desktop feel modern and responsive.
- **Deep Customization:** Every aspect, from window rules and animations to keybindings and gaps, can be configured through simple text files. This allows for a highly personalized setup.

---
## 🛠️ My Configuration Setup

My Hyprland setup is based on the **JaKooLit/arch-hyprland** dotfiles, which I then override with my own personal configurations from my `[[wallust-dotfiles]]` repository, managed with [[stow]].

- **Main Config File:** `~/.config/hypr/hyprland.conf`
- **User Keybinds:** `~/.config/hypr/UserConfigs/UserKeybinds.conf`
- **Startup Apps:** `~/.config/hypr/UserConfigs/Startup_Apps.conf`

---
## ✨ Key Features in My Workflow

- **"Mouse Mode":** I've set up a custom `submap` using [[dotool]] that allows me to control the mouse cursor, click, and scroll directly from the keyboard. This is essential for a truly mouse-less experience.
  - **Activation:** `SUPER + SHIFT + M`
  - **Exit:** `ESC`

- **Scratchpad Terminal:** I have a keybinding (`SUPER + S`) to quickly toggle a floating terminal window for quick notes or commands, which is defined in my `hyprland.conf`.

- **Flatpak Integration:** For Hyprland to work correctly with [[Flatpak]] apps, it needs a specific portal backend.
  - **Required Package:** `xdg-desktop-portal-hyprland`
  - ==This is a critical component== to solve issues like applications failing to launch or having long startup times.