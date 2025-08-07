---
tags:
  - linux
  - tools
  - cli
  - hyprland
  - wayland
  - customization
  - wallpaper
aliases: ["swww daemon", "Sway Wallpaper"]
creation_date: 2025-08-06
---

# swww: An Animated Wallpaper Daemon

`swww` (Sway Wayland Wallpaper) is an efficient wallpaper daemon for [[Wayland]] compositors like [[Hyprland]]. Its main feature is the ability to change wallpapers on the fly with smooth, animated transitions, which provides a much more polished feel than a static background.

---
## 🤔 Why It's Useful
- **Daemonized:** It runs as a background service, which is more efficient than tools that just set a one-time wallpaper.
- **Animated Transitions:** It can change wallpapers with nice effects like fades, wipes, and grows instead of just an instant switch.
- **Scriptable:** Because it's controlled from the command line, it's perfect for integrating into scripts. This is how my system updates its entire theme with [[wallust]] whenever I change my wallpaper.

---
## ⚙️ How to Install
`swww` is available on the [[AUR]].

- **Installation Command:**
  > paru -S swww

---
## 🛠️ My Configuration
To work correctly, the `swww` daemon needs to be initialized when Hyprland starts.

- **Add this to your Hyprland startup file** (e.g., `~/.config/hypr/UserConfigs/Startup_Apps.conf`):
  > \# Initialize the wallpaper daemon on launch
  > exec-once = swww init

  > *After `swww init` has run, you can then set your initial wallpaper. My dotfiles likely handle this with another `exec-once` line that runs after a short delay.*

---
## 🚀 Common Commands / Usecase
Once the daemon is running, you use the `swww img` command to change the wallpaper.

- **To Change Wallpaper with a Simple Fade (Default):**
  > swww img /path/to/your/wallpaper.png

- **To Change Wallpaper with a Specific Transition:**
  *You can specify the transition type, duration, angle, and more.*
  > \# A 'grow' effect from the center of the screen
  > swww img /path/to/image.jpg --transition-type grow --transition-pos center
  >
  > \# A 'wipe' effect from left to right
  > swww img /path/to/image.jpg --transition-type wipe --transition-angle 0
  >
  > \# A faster, outer-to-inner wipe
  > swww img /path/to/image.jpg --transition-type outer --transition-step 90

- **To Query the Current Wallpaper:**
  > swww query

> **My Workflow:** I don't usually run these commands directly. I have a keybinding (`SUPER + W`) that launches a [[Rofi]] script (`WallpaperSelect.sh`). When I choose an image, that script automatically calls both `swww img` to set the new wallpaper and `wallust` to generate and apply a new color scheme from it.