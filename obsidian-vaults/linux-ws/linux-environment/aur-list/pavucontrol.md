---
tags:
  - linux
  - tools
  - gui
  - audio
  - pipewire
  - pulseaudio
aliases: ["PulseAudio Volume Control", "Volume Mixer"]
creation_date: 2025-08-06
---

# pavucontrol: The Advanced Volume Mixer

`pavucontrol` is a graphical utility for controlling your system's audio. It gives you detailed, per-application control over volume levels and lets you manage all your input and output audio devices.

It's the powerful "sound settings" panel that you'd typically find in a full desktop environment like GNOME or KDE, but as a standalone application.

---
## 🔊 A Note on PipeWire & PulseAudio
My [[EndeavourOS]] system uses [[PipeWire]], the modern sound server for Linux. `pavucontrol` is technically the "PulseAudio Volume Control", but it works ==perfectly== with PipeWire.

This is because PipeWire is designed to be compatible with older PulseAudio applications. `pavucontrol` remains the recommended GUI tool for managing complex audio routing on a modern PipeWire system.

---
## ⚙️ How to Install
`pavucontrol` is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S pavucontrol

---
## 🚀 Usecase & Key Features
You launch the application from [[Rofi]] or by typing `pavucontrol` in the terminal. The interface has several key tabs:

- **`Playback` Tab (Most Useful):**
  - This tab shows **every application** that is currently playing audio, each with its own separate volume slider.
  - *Usecase: Perfect for when a background browser tab is playing a loud ad—you can mute just Firefox without affecting your music in [[Spotify]].*

- **`Output Devices` Tab:**
  - Lets you see and choose your active sound output device (e.g., speakers, headphones, HDMI audio). You can also set the volume and balance for each device here.

- **`Input Devices` Tab:**
  - Manage your microphones. You can see which microphone is active, adjust its input volume, and mute/unmute it.

- **`Recording` Tab:**
  - Shows which applications are currently recording audio (like [[OBS Studio]] or Discord) and from which source.

- **`Configuration` Tab:**
  - Used to enable or disable different hardware profiles for your sound cards (e.g., switching between Analog Stereo Duplex and Digital Surround Sound).

> **My Workflow:** For quick, global volume changes, I use my [[Hyprland]] keybindings which call the `pamixer` CLI tool. But when I need fine-grained control—like making Discord quieter than a game, or routing audio to a different device—I launch `pavucontrol`. It's the right tool for complex audio jobs.