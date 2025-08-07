---
tags:
  - linux
  - tools
  - cli
  - tui
  - gpu
  - nvidia
  - monitoring
  - sysadmin
aliases: ["NVIDIA TOP", "GPU monitor"]
creation_date: 2025-08-06
---

# nvtop: The GPU Monitoring TUI

`nvtop` is a terminal-based task monitor for your GPUs. Think of it as `htop` or `[[btop]]`, but specifically for monitoring your graphics cards (both NVIDIA and AMD/Intel).

It's an essential tool for understanding real-time GPU usage, memory consumption, and temperatures.

---
## 🤔 Why It's a Must-Have for My Laptop
- **Hybrid Graphics Support:** My laptop has both an integrated Intel GPU and a dedicated NVIDIA GPU. `nvtop` is brilliant because it can **show both GPUs at the same time**. This lets me see exactly which GPU is being used by which application.
- **Real-time Monitoring:** It gives a clear, graphical overview of GPU utilization, memory usage, and temperature, which is perfect for checking performance or diagnosing potential overheating.
- **Process List:** The process list at the bottom shows exactly which applications are using the GPU, which is great for debugging graphics issues.

---
## ⚙️ How to Install
`nvtop` is available in the Arch `extra` repository.

- **Installation Command:**
  > paru -S nvtop

---
## 🚀 How to Use & Keybindings

- **To Launch:**
  > nvtop

### Understanding the Interface
- The bar graphs at the top show the real-time status of each detected GPU. For my system, `GPU0` is the NVIDIA GeForce MX130 and `GPU1` is the integrated Intel UHD Graphics.
- The list at the bottom shows the processes that are currently using GPU resources.

### Keybindings Inside the App
-   **`Up` / `Down`**: Select a process in the list.
-   **`F2`**: Open the **Setup** screen, where you can change colors and display options.
-   **`F5`**: Toggle the process tree view on/off.
-   **`F6`**: Open the **Sort-by** menu to change how processes are ordered.
-   **`h`** or **`F1`**: Show the help screen.
-   **`q`** or **`F10`**: Quit the application.

> **My Workflow:** When I want to check if a game or heavy application is correctly using my dedicated NVIDIA GPU (especially inside my `[[game-box]]` container), I run `nvtop`. If I see high utilization on the `GPU0` (NVIDIA) bar, I know it's working as expected. It's also my go-to tool for monitoring GPU temperatures during heavy tasks.