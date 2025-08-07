---
tags:
  - linux
  - tools
  - theming
  - customization
  - rust
aliases: ["wallust themer"]
creation_date: 2025-08-06
---

# wallust: Universal Theming Engine

`wallust` is a powerful theming tool written in Rust. Its core function is to generate a full color palette from any given image (your wallpaper) and then use that palette to theme a wide range of other applications.

This is the key to achieving a cohesive, unified look across my entire desktop environment, from the terminal to the status bar.

---
## 🤔 Why It's Useful
- **Automated Theming:** It eliminates the need to manually edit the color configuration for every single application.
- **Centralized Control:** All theming is driven by a single command and a single configuration file (`~/.config/wallust/wallust.toml`).
- **Extensive Support:** It has built-in templates for many of the applications I use, including [[Hyprland]], [[Kitty]], [[Rofi]], [[Waybar]], and more.
- **Dynamic:** It integrates perfectly with scripts, allowing me to change my entire desktop theme just by changing my wallpaper.

---
## ⚙️ How to Install
`wallust` is available on the [[AUR]].

- **Installation Command:**
  > paru -S wallust

---
## 🛠️ My Configuration
The behavior of `wallust` is controlled by its configuration file. This is where you tell it *which* applications to theme and *how* to apply the colors.

- **Config File Location:** `~/.config/wallust/wallust.toml`

A key part of my configuration is the `[templates]` section, where I define how the generated colors should be applied to each app. For example, to theme Kitty, the config might look like this:

```toml
# In ~/.config/wallust/wallust.toml

[templates]
kitty = { path = "~/.config/kitty/wallust.conf" }