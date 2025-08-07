---
tags:
  - linux
  - tools
  - cli
  - containers
  - devops
  - virtualization
aliases: ["distrobox", "container manager"]
creation_date: 2025-08-06
---

# Distrobox: A "Terminal within a Terminal"

`Distrobox` is a powerful wrapper around container technologies like `[[podman]]` or `[[Docker]]`. Its main purpose is to let you quickly create and manage "sandboxed" command-line environments using any Linux distribution you want.

It's the core of **Layer 4** in my system architecture, acting as my "Laboratories" and "Workspaces" for specific tasks.

---
## 🤔 Why It's a Game Changer for My Workflow
- **Total Isolation:** I can install any development toolchain, programming language, or even experimental software inside a container without a single file touching my clean [[EndeavourOS]] host system.
- **"Try Before You Buy":** As a content creator, I can spin up a Fedora or Ubuntu container to test a tutorial or review a feature without needing a full VM or a separate partition.
- **Seamless Integration:** This is its killer feature. It tightly integrates the container with my host system. My entire `/home` directory is automatically shared, and I can "export" applications from the container so they appear directly in my [[Rofi]] menu.
- **Disposable Environments:** If I mess something up badly inside a container, I can just delete it (`distrobox rm <name>`) and create a new one in seconds. There is zero risk to my main OS.

---
## ⚙️ How to Install
`Distrobox` is available in the Arch `extra` repository. It works best with `[[podman]]`.

- **Installation Command:**
  > paru -S --needed distrobox podman

---
## 🚀 My Current Fleet of Containers
This is a list of the specialized environments I have set up.

- **`[[ubuntu-clean]]`**
  - **Purpose:** My primary workspace for **Web Development**.
  - **Image:** `ubuntu:latest`
  - **Key Software:** [[Volta]], [[pnpm]], [[Node.js]], [[AstroNvim]], VS Code.

- **`[[llm-box]]`**
  - **Purpose:** My dedicated lab for **AI/ML and LLM experiments**.
  - **Image:** `registry.fedoraproject.org/fedora-toolbox:40`
  - **Key Software:** [[Python]], Pip, PyTorch, Ollama.

- **`[[game-box]]`**
  - **Purpose:** An optimized environment for **Gaming**.
  - **Image:** `ghcr.io/ublue-os/bazzite-arch:latest`
  - **Key Software:** Steam, Lutris, latest Mesa/NVIDIA drivers.

- **`[[alpine-lab]]`**
  - **Purpose:** A super lightweight container for **quick tests and scripting**.
  - **Image:** `alpine:latest`
  - **Key Software:** Basic shell utilities.

---
## 🛠️ Common Commands

- **To Create a New Container:**
  > \# --name: The name you'll use to enter it
  > \# --image: The distro image to pull
  > \# --hostname: Sets the internal hostname (for my OMP theme)
  > \# --nvidia: Gives the container access to my NVIDIA GPU
  > distrobox create --name <name> --image <image> --hostname <hostname> --nvidia

- **To List All Containers:**
  > distrobox list

- **To Enter a Container:**
  > distrobox enter <name>
  >
  > *Or, using my custom aliases: `ubuntu`, `llmbox`, `gamebox`, `alpine`*

- **To Stop a Container:**
  > distrobox stop <name>

- **To Remove a Container:**
  > distrobox rm <name>

- **To Export an App from a Container to Rofi:**
  > distrobox-export --app <app_name>