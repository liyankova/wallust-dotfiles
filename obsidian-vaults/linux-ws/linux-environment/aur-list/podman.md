---
tags:
  - linux
  - tools
  - cli
  - containers
  - devops
  - podman
  - docker
aliases: ["Podman", "Pod Manager"]
creation_date: 2025-08-06
---

# podman: The Daemonless Container Engine

`podman` is a modern, open-source tool for developing, managing, and running OCI containers on Linux. It's designed to be a powerful and more secure alternative to [[Docker]].

The key takeaway is that `podman` provides a command-line experience that is nearly identical to Docker's, but without requiring a central, always-running daemon.

---
## 🤔 `podman` vs. `[[Docker]]`
While the commands are mostly the same, the philosophy behind them is different.

- **Daemonless:** `docker` relies on a central daemon (a background service) that runs as root. `podman` does not. It runs containers as direct child processes of your user session. This is simpler, more stable (no single point of failure), and more secure.
- **Rootless:** ==This is the biggest advantage for security.== By default, `podman` runs in "rootless" mode. This means you can build and run containers as a regular user, without `sudo` or being in the `docker` group. If a process breaks out of a container, it only has your user's permissions, not root's.
- **Docker Compatibility:** `podman` is designed as a drop-in replacement. For most common commands, you can simply alias `docker=podman` and everything will work as expected.

---
## ⚙️ How to Install
`podman` is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S podman

  > *Unlike Docker, you don't need to enable a `systemd` service after installation. It just works.*

---
## 🛠️ Integration with `[[Distrobox]]`
`[[Distrobox]]` is designed to work with `podman` out of the box and will often prefer it if it's installed. It's the default container backend on distributions like Fedora. My `distrobox` commands will automatically use `podman` now that it's installed on my system.

---
## 🚀 Common Commands (Docker Compatibility)
The commands are intentionally similar to Docker's to make switching easy.

- **To List Running Containers:**
  > podman ps

- **To List All Containers (including stopped ones):**
  > podman ps -a

- **To List Downloaded Images:**
  > podman images

- **To Run a Container:**
  > podman run -it --rm ubuntu:latest /bin/bash

- **To Stop a Container:**
  > podman stop <container_name_or_id>

- **To Remove a Container:**
  > podman rm <container_name_or_id>

- **For Full Docker Compatibility (The `docker` alias):**
  *If you have scripts or tools like `docker-compose` that explicitly expect the `docker` command, you can install a helper package that creates a symlink.*
  > paru -S podman-docker
  
  > *After installing this, typing `docker` will automatically run `podman` instead.*