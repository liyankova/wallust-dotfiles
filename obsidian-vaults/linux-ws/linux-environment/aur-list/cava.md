---
tags:
  - linux
  - tools
  - cli
  - tui
  - audio
  - customization
  - fun
aliases: ["C.A.V.A.", "Console Audio Visualizer"]
creation_date: 2025-08-07
---

# cava: The Console Audio Visualizer

`cava` is a bar-spectrum audio visualizer for the terminal. It listens to your system's audio output (like from [[Spotify]] or [[mpv]]) and turns it into those cool, bouncing music bars.

---
## 🤔 Why It's a Cool Addition
- **Pure Eye-Candy:** It adds a dynamic and visually appealing element to a terminal-focused desktop.
- **Highly Configurable:** You can change everything from the number of bars and colors to gradients and smoothing. It can be easily themed to match your `[[wallust]]` color scheme.
- **"Desktop Widget" Effect:** When used with a transparent [[Kitty]] window, it can be layered on your desktop to look like an integrated widget.

---
## ⚙️ How to Install
`cava` is available in the Arch `community` repository.

- **Installation Command:**
  > paru -S cava

---
## 🛠️ Configuration
For `cava` to work, you need a configuration file telling it which audio source to listen to and how it should look.

- **Step 1: Create a default config file.**
  *The best way to start is to copy the example config to your personal config directory.*
  > mkdir -p ~/.config/cava
  >
  > cp /etc/cava/config ~/.config/cava/config

- **Step 2: Edit the config file.**
  > nvim ~/.config/cava/config

- **Step 3: Key Settings to Adjust.**
  - **Audio Source:** My [[EndeavourOS]] system uses [[PipeWire]], which provides a PulseAudio compatibility layer. The most reliable setting is usually `pulse`.
    ```ini
    # In ~/.config/cava/config
    [input]
    method = pulse
    ```
  - **Colors:** You can define gradients or up to 8 specific colors for the bars to match your theme.
    ```ini
    [color]
    gradient = 1
    gradient_color_1 = '#A892A2'
    gradient_color_2 = '#674456'
    # ... and so on
    ```

---
## 🚀 How to Use

- **To Launch:**
  *Simply run the command in your terminal.*
  > cava

### My Workflow: Using it as a Widget
To make it look like a widget on my [[Hyprland]] desktop, I can launch `cava` in a dedicated [[Kitty]] window and apply some window rules.

- **1. Add Window Rules to `hyprland.conf`:**
  ```ini
  # Rules for cava widget
  windowrulev2 = float, class:^(cava-widget)$
  windowrulev2 = pin, class:^(cava-widget)$
  windowrulev2 = noborder, class:^(cava-widget)$
  windowrulev2 = size 60% 30%, class:^(cava-widget)$
  windowrulev2 = move 20% 68%, class:^(cava-widget)$


- **2. Launch `cava` with a custom class:**

> kitty --class cava-widget cava

```

