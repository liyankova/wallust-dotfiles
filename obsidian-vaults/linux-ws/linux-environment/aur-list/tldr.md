---
tags:
  - linux
  - tools
  - cli
  - shell
  - productivity
  - documentation
aliases: ["tldr pages"]
creation_date: 2025-08-06
---

# tldr: Simplified Man Pages

`tldr` (short for "Too Long; Didn't Read") is a community-driven help system for command-line tools. It's the answer to the problem of `man` pages being overwhelmingly long and academic.

Instead of a wall of text, `tldr` gives you a handful of practical, common-sense examples for a given command.

---
## 🤔 Why It's a Lifesaver
- **Example-Driven:** It focuses on showing you *how* to use a command with 5-6 real-world examples, not explaining every single flag.
- **Saves Time:** It's much faster than reading a full `man` page or searching online when you just forget the basic syntax for a command.
- **Community Maintained:** The pages are written by users, for users, so they focus on what people actually need to do.

---
## ⚙️ How to Install
`tldr` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S tldr

- **One-Time Setup:**
  *The first time you use it, and periodically after that, you should update the local cache of pages.*
  > tldr --update

---
## 🚀 Common Commands / Usecase
The usage is as simple as it gets. You just replace `man` with `tldr`.

- **To get help for any command:**
  > tldr <command_name>

### A Classic Example: `tar`
Trying to remember the flags for the `tar` command is a classic Linux headache.

- **The Old Way (`man` page):**
  > man tar
  >
  > *You get a massive, screen-long document explaining every detail of magnetic tape archives from the 1970s.*

- **The `tldr` Way:**
  > tldr tar
  >
  > *You get a few, clear examples like:*
  > * - To extract (unzip) a `.tar.gz` file: `tar -xzvf file.tar.gz`*
  > * - To create (zip) a `.tar.gz` file: `tar -czvf archive.tar.gz folder/`*

### Another Example: `find`
> tldr find
>
> *This will immediately show you practical examples for finding files by name, by type, or by modification date, without you having to decipher the complex syntax of the `find` man page.*

> **My Workflow:** I now use `tldr` as my first stop whenever I forget a command's syntax. I only open the full `man` page if I need a really obscure option. It's the perfect balance between getting a quick, useful answer and staying in the terminal.