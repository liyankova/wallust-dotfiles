#!/bin/bash

# --- DEFINISI VARIABEL (Meniru script JaKooLit) ---
# Direktori untuk script-script utama
SCRIPTSDIR="$HOME/.config/hypr/scripts"

# Direktori tempat Anda menyimpan wallpaper workspace
# Pastikan path ini benar!
WALLPAPER_DIR="$HOME/Pictures/wallpapers/workspace/" 

# Konfigurasi transisi swww (diambil dari WallpaperSelect.sh)
FPS=60
TYPE="any"
DURATION=2
BEZIER=".43,1.19,1,.4"
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION --transition-bezier $BEZIER"

# --- LOGIKA SCRIPT ---

# Ambil nomor workspace dari argumen pertama
WORKSPACE_NUM=$1

# Jika tidak ada argumen, keluar
if [ -z "$WORKSPACE_NUM" ]; then
    echo "Error: Nomor workspace tidak diberikan."
    exit 1
fi

# Cari file wallpaper yang cocok
WALLPAPER_PATH=$(find "$WALLPAPER_DIR" -type f -name "${WORKSPACE_NUM}.*" | head -n 1)

# Jika wallpaper untuk workspace tersebut ada...
if [ -n "$WALLPAPER_PATH" ]; then
    # LANGKAH 1: Set wallpaper baru dengan swww (menggunakan parameter JaKooLit)
    swww img "$WALLPAPER_PATH" $SWWW_PARAMS

    # LANGKAH 2: Panggil script wallust untuk update tema
    # Path yang benar ada di dalam $SCRIPTSDIR, bukan .../configs/
    "$SCRIPTSDIR/WallustSwww.sh"
    
    # Jeda sesaat
    sleep 0.5

    # LANGKAH 3: Panggil Refresh.sh untuk menerapkan tema ke Waybar, dll.
    "$SCRIPTSDIR/Refresh.sh"
    hyprctl keyword decoration:blur:enabled false
fi

# LANGKAH 4: Pindahkan fokus ke workspace yang dituju
#hyprctl dispatch workspace "$WORKSPACE_NUM"
