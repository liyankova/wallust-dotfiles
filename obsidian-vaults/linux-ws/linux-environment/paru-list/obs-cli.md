---
tags:
  - linux
  - tools
  - cli
  - obsidian
  - notes
  - productivity
aliases: ["Obsidian CLI"]
creation_date: 2025-08-06
---

# obs-cli: Obsidian on the Command Line

`obs-cli` is a command-line interface that allows me to interact with my [[Obsidian]] vault directly from the terminal. It's the perfect tool for a keyboard-centric workflow, letting me search, open, and create notes without ever needing to open the main GUI first.

---
## 🤔 Why It's Useful
- **Quick Access:** Open any note directly by its name.
- **Powerful Search:** Search the entire vault for keywords or tags much faster than opening the app.
- **Scripting:** Allows me to create new notes or append to existing ones from shell scripts, which is great for quick thoughts and automation.
- **Integration:** It can be combined with other CLI tools like `fzf` to create powerful, interactive workflows.

---
## ⚙️ How to Install
`obs-cli` is available on the [[AUR]].

- **Installation Command:**
  > paru -S obs-cli

---
## 🛠️ One-Time Configuration
For `obs-cli` to work, it needs to know where your Obsidian vault is located. The best way to do this is by setting an environment variable in your `~/.zshrc`.

- **Add this line to your `~/.zshrc` file:**
  *You'll need to replace `path/to/your/vault` with the actual path to your Obsidian vault.*
  > \# In the ENVIRONMENT VARIABLES section of ~/.zshrc
  > export OBSIDIAN_VAULT_PATH="$HOME/path/to/your/vault"

- **Then, reload your shell:**
  > source ~/.zshrc

> **Note:** Without this, you would have to specify the vault path