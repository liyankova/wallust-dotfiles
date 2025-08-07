---
tags:
  - linux
  - tools
  - cli
  - bootloader
  - grub
  - sysadmin
  - multiboot
aliases: ["GRUB bootloader"]
creation_date: 2025-08-06
---

# GRUB: The Grand Unified Bootloader

GRUB (GRand Unified Bootloader) is the program that loads the operating system when my computer starts. It's the interactive menu I see first, which lets me choose which OS or kernel to boot.

For my UEFI system, it lives on the EFI partition and is the key to managing a multi-boot setup.

---
## 🗂️ Key Configuration Files
Understanding these three locations is key to managing GRUB:

- **`/etc/default/grub`**: This is the main **settings** file. I edit this file to change things like the default boot timeout, kernel parameters, and to enable/disable features like `[[os-prober]]`.

- **`/boot/grub/grub.cfg`**: This is the **generated menu** file that GRUB actually reads at boot time. ==I should never edit this file directly==, as it gets automatically overwritten every time I update the GRUB configuration.

- **`/etc/grub.d/`**: This directory contains the **scripts** that are used to build the `grub.cfg` file. The `40_custom` script in here is where I can add my own manual boot entries (like chainloading another distro).

---
## ⚙️ How to Install / Re-install
This is usually handled by the OS installer, but you can re-install GRUB to the EFI partition to ensure your current OS is in control of the boot process.

- **Installation Command for a UEFI system:**
  > sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=EndeavourOS
  
  > *`--bootloader-id` determines the name of the folder it creates in the EFI partition.*

---
## 🚀 Common Tasks & Commands

- **Updating the GRUB Menu (Most Common Task):**
  *You must run this command any time you change `/etc/default/grub` or a file in `/etc/grub.d/`.*
  > sudo grub-mkconfig -o /boot/grub/grub.cfg

- **Enabling Multi-boot (Detecting Other OSes):**
  *This requires `[[os-prober]]`.*
  > \# 1. Install os-prober
  > paru -S os-prober
  >
  > \# 2. Edit the config file
  > sudo nvim /etc/default/grub
  >
  > \# 3. Make sure this line is present and uncommented:
  > GRUB_DISABLE_OS_PROBER=false
  >
  > \# 4. Regenerate the menu to add the found OSes
  > sudo grub-mkconfig -o /boot/grub/grub.cfg

- **Manually Adding an Entry (Chainloading):**
  *This is the advanced method for booting other Linux distros cleanly.*
  > \# 1. Edit the custom script file
  > sudo nvim /etc/grub.d/40_custom
  >
  > \# 2. Add an entry like this, using the UUID of the EFI partition
  > ```
  > menuentry 'Fedora' {
  >   search --fs-uuid --no-floppy --set=root 774D-446A
  >   chainloader /EFI/fedora/shimx64.efi
  > }
  > ```
  > \# 3. Regenerate the menu
  > sudo grub-mkconfig -o /boot/grub/grub.cfg

---
## 🔗 Related Tools
- `[[efibootmgr]]`: While GRUB manages its own menu, the *order* in which the motherboard's firmware tries to load bootloaders is managed by `efibootmgr`. I've had to use this in the past to force my PC to default to the EndeavourOS GRUB instead of another OS's bootloader.