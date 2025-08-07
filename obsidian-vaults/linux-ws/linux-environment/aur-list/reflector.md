---
tags:
  - linux
  - tools
  - cli
  - arch
  - pacman
  - sysadmin
  - networking
aliases: ["Arch mirrorlist", "reflector mirrors"]
creation_date: 2025-08-06
---

# reflector: Optimizing Your Package Mirrors

`reflector` is a script that automates the process of finding the fastest and most up-to-date package mirrors for [[Arch Linux]] and its derivatives.

Keeping your mirrorlist optimized is one of the most important parts of maintaining a healthy and fast rolling release system like [[EndeavourOS]].

---
## 🤔 Why It's Important
- **Faster Updates:** It finds the servers that are geographically closest to you and have the highest download speeds, which makes `paru -Syu` much faster.
- **Prevents Errors:** It filters out mirrors that are out-of-date, offline, or syncing slowly, which prevents many common `pacman` errors.
- **Automation:** It automates a task that would be very tedious to do manually (pinging hundreds of servers and checking their status).

---
## ⚙️ How to Install
`reflector` is a core utility in the Arch ecosystem and is available in the `extra` repository. It likely came pre-installed with your EndeavourOS system.

- **Installation Command (just in case):**
  > paru -S reflector

---
## 🚀 Common Commands / Usecase
The main idea is to build a command that filters and sorts the official mirror list and then saves it.

- **The Basic Idea (A "Dry Run"):**
  *This command will find the 5 fastest mirrors in Indonesia that have synced in the last 12 hours and print them to the screen without saving.*
  > reflector --country Indonesia --latest 5 --sort rate

- **My Recommended Command (The One to Actually Use):**
  *This is a powerful, practical command that combines the best options. ==You need `sudo` because it's writing to a system file.==*
  > sudo reflector --country Indonesia,Singapore --protocol https --latest 10 --sort rate --save /etc/pacman.d/mirrorlist

  > Let's break that down:
  > - **`--country Indonesia,Singapore`**: Only look for mirrors in Indonesia and nearby Singapore.
  > - **`--protocol https`**: Only use secure HTTPS mirrors.
  > - **`--latest 10`**: Filter down to the 10 mirrors that have synchronized most recently (within the last few hours).
  > - **`--sort rate`**: Sort these 10 mirrors by their download speed, fastest first.
  > - **`--save /etc/pacman.d/mirrorlist`**: Overwrite your system's mirrorlist file with the result.

---
### 🤖 Automation
Running the command above once a week or so is good practice. For a truly "set it and forget it" setup, you can automate it.

The Arch-way to do this is with a [[pacman]] hook, which automatically runs `reflector` every time the `endeavouros-mirrorlist` package itself is updated. You can also set it up as a `systemd` timer to run on a schedule.

> For now, just running the recommended command manually whenever you feel your downloads are slow is more than enough to keep your system in top shape.