#!/bin/bash

notif="$HOME/.config/swaync/images"

# Langsung jalankan perintah untuk mengaktifkan blur
hyprctl keyword decoration:blur:enabled true
hyprctl keyword decoration:blur:size 6
hyprctl keyword decoration:blur:passes 2
hyprctl keyword decoration:blur:ignore_opacity true
hyprctl keyword decoration:blur:new_optimizations true
hyprctl keyword decoration:blur:special true
hyprctl keyword decoration:blur:popups true

notify-send -e -u low -i "$notif/ja.png" "Blur Diaktifkan"


