---
tags:
  - linux
  - tools
  - cli
  - shell
  - sysadmin
  - troubleshooting
aliases: ["which command"]
creation_date: 2025-08-06
---

# which: Locating a Command

`which` is a simple but essential command-line utility. Its only job is to search the directories in your `$PATH` environment variable and show you the full path to an executable.

It's the tool you use to answer the question, "Where is this program actually located?" or "Is this program even in my PATH?"

---
## 🤔 Why It's a Great Debugging Tool
- **Verifies Installation:** It immediately tells you if a program is installed and accessible to your shell.
- **Resolves Path Conflicts:** If you have multiple versions of a program installed in different locations (e.g., one from `pacman` and one from `[[Volta]]`), `which -a` will show you all available versions and tell you which one is being prioritized.
- **Finds Binary Locations:** Lets you quickly find the location of a binary to inspect it or use its full path in a script.

---
## ⚙️ How to Install
`which` is a core utility that is pre-installed on almost every Linux system, including [[EndeavourOS]]. You shouldn't need to install it.

- **Installation Command (just in case):**
  > paru -S which

---
## 🚀 Common Commands / Usecase

- **Basic Usage:**
  > \# Find the location of the Neovim binary
  > which nvim
  >
  > *Expected Output: `/usr/bin/nvim`*

- **Checking a Tool Managed by Volta:**
  *This is a great way to confirm your Volta setup is working correctly.*
  > \# Find out where the 'node' command is coming from
  > which node
  >
  > *Expected Output: `/home/liyan/.volta/bin/node`*

- **To Find All Available Instances of a Command:**
  *The `-a` flag is the most powerful feature.*
  > which -a python
  >
  > *This might show multiple paths, like `/usr/bin/python` and maybe another version in `~/.local/bin`, helping you debug which one is being used by default (the first one listed).*

- **What Happens When a Command Isn't Found:**
  *If the command isn't in your `$PATH`, `which` will return an error (or no output).*
  > which some-nonexistent-command
  >
  > *Expected Output: `which: no some-nonexistent-command in (...)`*

> **My Workflow:** Before I spend time debugging a complex script or a `command not found` error in my `[[.zshrc]]`, my first step is always to run `which <command>`. It immediately tells me if the problem is a missing installation or a `$PATH` issue.