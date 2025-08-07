---
tags:
  - linux
  - tools
  - hyprland
  - automation
  - keyboard-ninja
aliases: ["dotool mouse", "Mouse Mode"]
creation_date: 2025-08-06
---

# dotool: Keyboard Mouse Emulation

`dotool` is the core command-line tool that powers my "Keyboard Ninja Mouse Mode". It allows simulating keyboard and mouse input system-wide, which is perfect for a Wayland environment like [[Hyprland]].

It uses a client-server model:
- `dotoold`: A background daemon that creates the virtual input device.
- `dotoolc`: The client command we use to send instructions (like "move mouse left") to the daemon.

---
## ✅ Prerequisites: User Permissions
For `dotool` to work, your user needs permission to create virtual input devices. This is a one-time setup.

- **Add your user to the `input` group:**
  > sudo usermod -aG input $USER

- **IMPORTANT:** You **must log out and log back in** (or reboot) for this group change to take effect.

---
## ⚙️ How to Install
`dotool` is available on the [[AUR]].

- **Installation Command:**
  > paru -S dotool

---
## 🛠️ My Hyprland Configuration ("Mouse Mode")
This is how `dotool` is integrated into my daily workflow. The configuration lives in my Hyprland dotfiles.

- **1. Start the Daemon Automatically:**
  To ensure the `dotoold` daemon is always ready, this line is in my `hyprland.conf`:
  > exec-once = dotoold

- **2. The "Mouse Mode" `submap`:**
  This block, located in my `UserKeybinds.conf`, defines the entire mouse emulation layer. It's activated by pressing `SUPER + SHIFT + M`.

  ```ini
  # /* ---- Keyboard Mouse Emulation (dotool) - Final Choice ---- */ #

  # Bind to enter the mouse submap (SUPER + SHIFT + M)
  bind = $mainMod SHIFT, M, submap, mouse

  # Start of the submap
  submap = mouse

  # --- Cursor Movement (HJKL and Arrow Keys) ---
  bindle=, h, exec, echo mousemove -40 0 | dotoolc
  bindle=, l, exec, echo mousemove 40 0 | dotoolc
  bindle=, k, exec, echo mousemove 0 -40 | dotoolc
  bindle=, j, exec, echo mousemove 0 40 | dotoolc
  bindle=, left, exec, echo mousemove -40 0 | dotoolc
  bindle=, right, exec, echo mousemove 40 0 | dotoolc
  bindle=, up, exec, echo mousemove 0 -40 | dotoolc
  bindle=, down, exec, echo mousemove 0 40 | dotoolc

  # --- Clicks & Drag (on home row) ---
  bindl=, u, exec, echo click left | dotoolc
  bindl=, i, exec, echo click right | dotoolc
  bindl=, o, exec, echo click middle | dotoolc
  bindl=, d, exec, echo buttondown left | dotoolc
  bindl=, r, exec, echo buttonup left | dotoolc

  # --- Scrolling System ---
  # Major Page Scroll (for main content)
  bindle = SHIFT, k, exec, echo key k:104 | dotoolc # Page_Up
  bindle = SHIFT, j, exec, echo key k:109 | dotoolc # Page_Down

  # Fine Mouse Wheel Scroll (for sidebars, etc.)
  bindle = ALT, up, exec, echo wheel -30 | dotoolc
  bindle = ALT, down, exec, echo wheel 30 | dotoolc

  # Bind to exit the submap
  bind = , escape, submap, reset 

  # End of the submap
  submap = reset