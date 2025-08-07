---
tags:
  - linux
  - os
  - arch
aliases: ["EnOS", "Endeavour"]
creation_date: 2025-08-06
---

# EndeavourOS

EndeavourOS is an Arch-based distribution that's known for being terminal-centric with a friendly and helpful community. It sits in a perfect sweet spot: it gives you all the power and freshness of [[Arch Linux]] without the painful manual installation process.

---
## ✅ Why It's a Good Fit for Me

After trying a bunch of other distros, EndeavourOS turned out to be the most reliable and logical choice for my setup.

- **The Arch Experience, Minus the Headache:** I get full access to `pacman`, the [[AUR]] via [[paru]], and always-updated packages. But unlike my previous attempts with vanilla Arch, Endeavour's Calamares installer is incredibly reliable and gets a working system up and running fast, avoiding the keyring issues I had with other installers.

- **Solid NVIDIA & Laptop Support:** This was a huge pain point on vanilla Arch. EndeavourOS comes with much better hardware support out of the box and provides simple tools like `nvidia-inst`. This helps a lot with the tricky Optimus (hybrid graphics) setup on my laptop and avoids the overheating issues I had in the past.

- **A Clean, but Not Empty, Slate:** The "no-desktop" installation I chose gives me a minimal base to build my own [[Hyprland]] setup on. However, it's not completely barebones; it still includes helpful scripts and sane defaults that make life easier. It's the perfect balance of control and convenience.

---
## 🎯 Role in My Setup

In my system architecture, EndeavourOS serves as the **Host System**, the "Stable Foundation". Its only job is to run the core desktop environment and my essential, globally-needed CLI tools.

> **HOST:** EndeavourOS (System, Drivers, Hyprland, Core CLI Tools)
>
> **GUESTS:** [[Flatpak]] (GUI Apps) & [[distrobox]] (Dev/Gaming/Testing Environments)

This strategy keeps the main system clean, stable, and resilient, while all the "messy" stuff is isolated in containers or sandboxes.