#!/bin/bash

notif="$HOME/.config/swaync/images"

# Langsung jalankan perintah untuk menonaktifkan blur
hyprctl keyword decoration:blur:enabled false

notify-send -e -u low -i "$notif/note.png" "Blur Dimatikan"
