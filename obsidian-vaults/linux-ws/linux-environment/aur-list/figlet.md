---
tags:
  - linux
  - tools
  - cli
  - fun
  - ascii-art
aliases: ["figlet ascii"]
creation_date: 2025-08-06
---

# figlet: ASCII Art Text Generator

FIGlet is a classic, fun utility that creates large, fancy text banners out of ordinary ASCII characters.

It's perfect for things like welcome messages in shell scripts, headers in documentation, or just for fun when you're bored in the terminal.

---
## ⚙️ How to Install
`figlet` is a standard package available in almost every Linux distribution's official repositories.

- **Installation Command (on EndeavourOS):**
  > paru -S figlet

---
## 🚀 Common Commands / Usecase
The usage is very straightforward.

- **Basic Usage:**
  *Just pass the text you want to convert as an argument.*
  > figlet Hello, liyan

- **To Center the Output:**
  *Use the `-c` flag.*
  > figlet -c Centered Text

- **To Change the Font:**
  *`figlet` comes with many different fonts. You can use the `-f` flag to select one. Fonts are usually located in `/usr/share/figlet/`.*
  > \# First, list available fonts to see your options
  > ls /usr/share/figlet/*.flf
  >
  > \# Then, use a font you like
  > figlet -f slant "Slanted Text"

- **To Combine with Other Tools (The Fun Part):**
  *`figlet` can read from standard input, so you can pipe other commands into it.*
  > fortune | figlet -f smslant | lolcat
  
  > *This command takes a random fortune, turns it into slanted ASCII art, and then makes it rainbow-colored with `[[lolcat]]`.*

> **My Workflow:** I can use this to add a custom welcome message when I open a new terminal. By adding `figlet -f standard "Welcome" | lolcat` to the end of my `[[.zshrc]]`, I'll get a colorful banner every time I start a new Zsh session.