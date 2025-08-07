---
tags:
  - linux
  - tools
  - cli
  - bootloader
  - grub
  - sysadmin
  - multiboot
aliases: ["OS Prober"]
creation_date: 2025-08-06
---

# os-prober: Detecting Other Operating Systems

`os-prober` is a simple utility that scans your computer's partitions to find other installed operating systems.

Its main purpose is to work with the `[[GRUB]]` bootloader. When you update your GRUB menu, it calls `os-prober` in the background to automatically find your other OSes (like Windows, Fedora, or another Linux distro) and create boot entries for them.

---
## 🤔 Why It's Important for Multi-booting
- **Automation:** It automates the creation of boot menu entries. Without it, you would have to manually write a complex boot entry for every single OS you install.
- **Unified Menu:** It's the key to having a single, unified boot menu that can launch any OS on your machine, managed by your main distro ([[EndeavourOS]]).

---
## ⚙️ How to Install
`os-prober` is a standard tool available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S os-prober

---
## 🛠️ Configuration: Enabling in GRUB
For security reasons, modern versions of [[GRUB]] disable `os-prober` by default. You must explicitly enable it for it to work.

- **Step 1: Edit the GRUB default configuration file.**
  > sudo nvim /etc/default/grub

- **Step 2: Enable the `os-prober` setting.**
  *Find the following line (it may be commented out with a `#`)*:
  `#GRUB_DISABLE_OS_PROBER=false`

  *And change it to be active (uncommented and set to false):*
  > GRUB_DISABLE_OS_PROBER=false

- **Step 3: Update your GRUB menu.**
  *This