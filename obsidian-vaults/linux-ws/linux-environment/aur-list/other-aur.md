---
tags:
  - linux
  - tools
  - cli
  - index
aliases: ["Other CLI Tools", "Utilities"]
creation_date: 2025-08-06
---

# Other Useful CLI Utilities

This is a quick cheat sheet for other useful command-line tools I have installed on my system.

---
### System & Hardware
- **`fastfetch`**
  > My main system information tool. The alias `ff` is set in my `.zshrc`.
  > > ff

- **`inxi`**
  > An incredibly detailed hardware information tool. Great for troubleshooting.
  > > \# Get a full, detailed system report
  > > inxi -Fazy

- **`brightnessctl`**
  > A simple tool to control screen brightness. My Hyprland keybinds use this.
  > > \# Set brightness to 50%
  > > brightnessctl set 50%
  > >
  > > \# Increase brightness by 10%
  > > brightnessctl set 10%+

- **`efibootmgr`**
  > A tool to manage UEFI boot entries directly from Linux.
  > > \# List current boot entries and boot order
  > > sudo efibootmgr -v

---
### Audio & Media
- **`pamixer`**
  > A command-line mixer for PulseAudio/PipeWire. My Hyprland volume keys use this.
  > > \# Increase volume by 5%
  > > pamixer --increase 5
  > >
  > > \# Mute audio
  > > pamixer --toggle-mute

- **`playerctl`**
  > A utility to control media players that support the MPRIS D-Bus interface (like Spotify, mpv, etc.).
  > > \# Play or pause the current media
  > > playerctl play-pause
  > >
  > > \# Skip to the next track
  > > playerctl next

---
### Hyprland & Wayland Ecosystem
- **`cliphist`**
  > My clipboard manager for Wayland. It stores a history of everything I copy.
  > > \# Display the history in Rofi to select an item
  > > cliphist list | rofi -dmenu | cliphist decode | wl-copy

- **`grim` & `slurp`**
  > The duo for taking screenshots on Wayland. `slurp` selects an area, and `grim` takes the picture.
  > > \# Interactively select an area and save the screenshot
  > > grim -g "$(slurp)" ~/Pictures/screenshot.png

- **`hyprlock`**
  > My screen locker for Hyprland.
  > > \# Lock the screen now
  > > hyprlock

---
### Miscellaneous
- **`asciinema`**
  > A terminal session recorder. Great for creating shareable CLI tutorials.
  > > \# Start a new recording session
  > > asciinema rec
  > >
  > > \# End the recording by typing 'exit' or pressing Ctrl+D

- **`bandwhich`**
  > A TUI that shows which processes are currently using network bandwidth.
  > > bandwhich

- **`entr`**
  > Runs a command whenever a file changes. Perfect for auto-reloading or auto-testing.
  > > \# Run tests whenever a .js file is saved
  > > ls *.js | entr -s 'pnpm test'

- **`github-cli` (`gh`)**
  > The official GitHub command-line tool.
  > > \# Clone one of my private repos
  > > gh repo clone liyankova/wallust-dotfiles

- **`rclone`**
  > "Rsync for the cloud". Manages files on cloud storage like Google Drive.
  > > \# List files in my Google Drive remote named 'gdrive'
  > > rclone ls gdrive: