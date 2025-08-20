#!/bin/bash
# Skrip pemulihan sesi otomatis
sleep 2
hyprctl dispatch exec -- [workspace 1] kitty&
sleep 1
hyprctl dispatch exec -- [workspace 2] kitty&
sleep 1
hyprctl dispatch exec -- [workspace 4] kitty&
sleep 1
hyprctl dispatch exec -- [workspace 2] firefox&
sleep 1
hyprctl dispatch exec -- [workspace 4] obsidian&
sleep 1
hyprctl dispatch exec -- [workspace 5] Spotify&
sleep 1
