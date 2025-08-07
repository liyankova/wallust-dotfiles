---
tags:
  - linux
  - tools
  - packaging
  - flatpak
  - sandbox
aliases: ["Flatpak Apps"]
creation_date: 2025-08-06
---

# Flatpak: Sandboxed GUI Applications

Flatpak is a universal package management system for Linux. Its main goal is to let you install graphical applications in a way that's **isolated** from the rest of your system.

In my setup, Flatpak is **Layer 2**, the dedicated "guest room" for all my big GUI apps.

---
## 🤔 Why Use Flatpak?

- **Stability:** This is the biggest win. Flatpak apps bundle most of their own dependencies. This means installing or updating a Flatpak app (like OBS) ==will never break your system drivers or other packages==. It completely avoids "dependency hell" for GUI apps.
- **Security:** Every Flatpak app runs in its own **sandbox**, which is like a protective bubble. By default, it can't access your personal files or system resources unless you explicitly give it permission.
- **Up-to-Date Software:** You often get newer versions of applications on Flathub (the main Flatpak store) than what's available in a distro's official repositories.

---
## ⚙️ How to Install & Set Up
This is a one-time setup on a new Arch-based system.

- **Step 1: Install Flatpak and the Hyprland Portal**
  > paru -S --needed flatpak xdg-desktop-portal-hyprland
  >
  > *The `xdg-desktop-portal-hyprland` package is critical. It's the "bridge" that allows sandboxed Flatpak apps to communicate properly with [[Hyprland]]. Forgetting this is the main cause of apps not launching.*

- **Step 2: Add the Flathub Repository**
  > flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

---
## 🚀 Common Commands

- **To Install an App:**
  > flatpak install flathub com.spotify.Client
  >
  > *You find the `Application ID` (like `com.spotify.Client`) on the Flathub website.*

- **To Run an App (from terminal):**
  > flatpak run com.spotify.Client

- **To List Installed Apps:**
  > flatpak list

- **To Update All Apps:**
  > flatpak update

- **To Remove an App:**
  > flatpak uninstall com.spotify.Client

> **Troubleshooting Tip:** If a Flatpak app ever acts weird, the first thing to check is its permissions. You can manage these with a GUI tool called `Flatseal` (`paru -S flatseal`) or via the command line with `flatpak override`.