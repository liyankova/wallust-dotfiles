---
tags:
  - linux
  - tools
  - docker
  - cli
  - tui
  - devops
aliases: ["lazy docker"]
creation_date: 2025-08-06
---

# lazydocker: A TUI for Docker

`lazydocker` is a terminal user interface (TUI) for managing everything related to Docker and Docker Compose. Think of it as **"lazygit for Docker"**—it gives you a powerful, interactive, keyboard-and-mouse-driven dashboard for all your container needs, right in your terminal.

It saves you from having to memorize and type dozens of different `docker` commands.

---
## ✅ Prerequisites: Docker
`lazydocker` is a frontend, so it needs the actual Docker engine to be installed and running on your system.

- **Step 1: Install Docker and Docker Compose:**
  > paru -S docker docker-compose

- **Step 2: Start and Enable the Docker Service:**
  > sudo systemctl enable --now docker.service

- **Step 3: Add Your User to the `docker` Group:**
  *This lets you run `docker` commands without `sudo`.*
  > sudo usermod -aG docker $USER

  > ==**IMPORTANT:**== You must **log out and log back in** (or reboot) for this group change to take effect.

---
## ⚙️ How to Install
`lazydocker` is available on the [[AUR]].

- **Installation Command:**
  > paru -S lazydocker

---
## 🚀 Usecase & How to Use
The main use is to get a quick, visual overview of your entire Docker environment and manage it without typing long commands.

- **To launch the interface:**
  > lazydocker

### Basic Navigation
Once inside, you navigate with your keyboard (and mouse, if you wish):

-   **`[` and `]`** (or arrow keys `left`/`right`): Switch between panels (Containers, Services, Images, Volumes, etc.).
-   **Arrow keys `up`/`down`** (or `k`/`j`): Move up and down the list in the current panel.
-   **`Enter`**: "Zoom in" on the selected item. For a container, this shows its logs, stats, and config.
-   **`x`**: Opens a menu of common actions for the selected item (e.g., stop, restart, remove, shell).
-   **`d`**: Removes the selected item (with confirmation).
-   **`ESC`**: "Zoom out" or go back to the previous view.
-   **`q`**: Quits the application.

> `lazydocker` makes it incredibly fast to check the logs of a running service, shell into a container for debugging, or clean up old images and volumes, all from one clean interface.