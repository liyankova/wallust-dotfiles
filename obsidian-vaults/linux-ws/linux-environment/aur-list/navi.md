---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
  - cheatsheet
aliases: ["navi cheatsheet"]
creation_date: 2025-08-06
---

# navi: An Interactive Command-Line Cheat Sheet

`navi` is an interactive cheat sheet tool for the command line. It lets you browse and search for commands from curated lists and execute them after filling in arguments.

Think of it as a searchable, interactive version of all your personal notes and `man` pages, powered by the speed of `[[fzf]]`.

---
## 🤔 Why It's a Game Changer
- **Forgets commands so you don't have to.** Perfect for complex tools like `ffmpeg` or `git` that have a million flags.
- **Interactive Search:** It uses [[fzf]] under the hood, so you get a fast and familiar fuzzy-search experience.
- **Contextual Placeholders:** It allows you to define placeholders (like `<file>`) in your commands, which you can fill in before execution.
- **Extensible:** You can easily add your own personal cheat sheets or import massive collections from the community.

---
## ⚙️ How to Install
`navi` is available on the [[AUR]].

- **Installation Command:**
  > paru -S navi

---
## 🚀 How to Use & Common Commands

- **To Open the Main Interactive Search:**
  *This searches through all your installed cheat sheets.*
  > navi

- **To Search for a Specific Topic:**
  *This filters the interactive search to a specific query.*
  > navi query "<search_term>"
  >
  > *Example: `navi query "git branch"` will show all commands related to git branches.*

- **To Add Community Cheat Sheets:**
  *This is how you make `navi` incredibly powerful.*
  > \# Browse the list of available community cheat sheet repositories
  > navi repo browse
  >
  > \# Add the main, popular cheat sheet collection
  > navi repo add denisidoro/cheats

  > *After running this, your `navi` will be filled with hundreds of useful commands for tools like `git`, `docker`, `ffmpeg`, etc.*

---
### My Workflow: Creating a Custom Cheat Sheet
The real power of `navi` comes from creating your own cheat sheets for your personal workflow.

- **Step 1: Create a `.cheat` file.**
  *Cheat sheets are simple text files. The default location for your personal sheets is `~/.local/share/navi/cheats/`.*
  > \# Create a cheat sheet for my Distrobox commands
  > nvim ~/.local/share/navi/cheats/my_distrobox.cheat

- **Step 2: Add Your Commands.**
  *The format is simple: `%` for tags, `#` for comments, and the command itself. Use `<placeholder>` for arguments.*

%  distrobox, container

Create a new Ubuntu container with a specific hostname

distrobox create --name <name> --image ubuntu:latest --hostname <hostname>

% distrobox, container

Enter a container

distrobox enter <name>

% distrobox, container

Export an application from a container

distrobox-export --app <app_name>


- **Step 3: Use It!**
*That's it. The next time you run `navi`, your custom commands will automatically appear in the search results, ready to be used.*
