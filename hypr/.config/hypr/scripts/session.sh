#!/bin/bash

# Skrip sederhana untuk menyimpan dan memulihkan sesi Hyprland

SESSION_FILE="$HOME/.config/hypr/session.sh"

save_session() {
    echo "#!/bin/bash" > "$SESSION_FILE"
    echo "# Skrip pemulihan sesi otomatis" >> "$SESSION_FILE"
    echo "sleep 2" >> "$SESSION_FILE" # Jeda agar Waybar dll. siap

hyprctl clients -j | jq -r '.[] | select(.pid != -1) | "hyprctl dispatch exec -- [workspace " + (.workspace.id | tostring) + "] " + .class + "&\nsleep 1"' >> "$SESSION_FILE"
    chmod +x "$SESSION_FILE"
}

restore_session() {
    if [ -f "$SESSION_FILE" ]; then
        /bin/bash "$SESSION_FILE"
    fi
}

case "$1" in
    save)
        save_session
        ;;
    restore)
        restore_session
        ;;
    *)
        echo "Usage: $0 {save|restore}"
        exit 1
        ;;
esac
