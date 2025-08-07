---
tags:
  - linux
  - tools
  - shell
  - zsh
  - customization
  - prompt
aliases: ["Oh My Posh", "OMP"]
creation_date: 2025-08-06
---

# Oh My Posh: A Prompt Theme Engine

`oh-my-posh` is a powerful, cross-platform theme engine for styling the command prompt. It's what I use to get my multi-line, icon-rich, and context-aware prompt in [[Zsh]].

It works by running an `init` command every time the shell starts, which generates the prompt based on a JSON theme file.

---
## ⚙️ How to Install
The official installation script is the most reliable method and works across any Linux distro, making it perfect for both the host and my [[../distrobox]] containers.

- **Universal Installation Command:**
  > curl -s https://ohmyposh.dev/install.sh | sudo bash -s -- -d /usr/local/bin
  
  > *This command downloads the latest binary and places it in `/usr/local/bin`, making it available system-wide.*

---
## 🛠️ My Universal Zsh Configuration
This is the core of my setup. To make the prompt show the correct OS icon on my [[EndeavourOS]] host and inside each [[../distrobox]] container, the logic is handled in my `[[.zshrc]]` file, which then calls my custom `wallust.omp.json` theme.

- **1. The `.zshrc` Logic:**
  *This block in my `.zshrc` checks the machine's `hostname` and sets an environment variable (`POSH_OS_ICON`) with the correct Nerd Font icon.*
  ```zsh
  # --- OMP Icon Logic (Hostname-Based, Comprehensive) ---

  # Check the hostname and set the icon variable accordingly
  case "$(hostname)" in
    "arch" | "cachyos")
      export POSH_OS_ICON="" ;; # Arch Linux Icon
    "fedora")
      export POSH_OS_ICON="" ;; # Fedora Icon
    "ubuntu")
      export POSH_OS_ICON="" ;; # Ubuntu Icon
    "nixos")
      export POSH_OS_ICON="" ;; # NixOS Icon
    "alpine")
      export POSH_OS_ICON="" ;; # Alpine Linux Icon
    "steamdeck" | "chimeraos" | "steamos")
      export POSH_OS_ICON="" ;; # Steam Icon
    *) # Default for everything else (e.g., "endeavouros")
      export POSH_OS_ICON="" ;; # EndeavourOS Icon
  esac

  # Initialize Oh My Posh
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/wallust.omp.json)"

**2. The Theme File (`wallust.omp.json`):** _The theme file is made "dumb" and simply displays whatever icon the `.zshrc` logic provides. This is done by replacing the default `os` segment with a `text` segment that reads the environment variable._

{
  "type": "text",
  "style": "diamond",
  "leading_diamond": "\u256d\u2500\ue0b2",
  "background": "p:os_bg",
  "foreground": "p:os_fg",
  "template": " {{ .Env.POSH_OS_ICON }} "
}

🚀 Common Commands

Most interaction with Oh My Posh is indirect, but these commands are useful for managing it.

    To reload your prompt after making changes:

        source ~/.zshrc

    To edit your custom theme:

        nvim ~/.config/oh-my-posh/themes/wallust.omp.json

    To find the path to the built-in themes:

        oh-my-posh get theme-path
