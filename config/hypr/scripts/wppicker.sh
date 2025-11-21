#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/.config/hypr/walls"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"
ROFI_THEME="$HOME/.config/hypr/rofi/wall.rasi"

cd "$WALLPAPER_DIR" || exit 1

IFS=$'\n'

# === GET CURRENT WALLPAPER FILENAME ===
if [[ -L "$SYMLINK_PATH" ]]; then
    CURRENT_FILE=$(basename "$(readlink "$SYMLINK_PATH")")
else
    CURRENT_FILE=""
fi

# === BUILD LIST (sorted newest) ===
WALLS=($(ls -t *.jpg *.jpeg *.png *.gif *.webp 2>/dev/null))

# === FIND INDEX OF CURRENT WALL ===
SELECTED_INDEX=0
for i in "${!WALLS[@]}"; do
    if [[ "${WALLS[$i]}" == "$CURRENT_FILE" ]]; then
        SELECTED_INDEX=$i
        break
    fi
done

# === ROFI WITH ICON PREVIEW ===
SELECTED_WALL=$(
    for img in "${WALLS[@]}"; do
        echo -en "$img\0icon\x1f$WALLPAPER_DIR/$img\n"
    done | rofi -dmenu -selected-row "$SELECTED_INDEX" -theme "$ROFI_THEME" -p "Wallpaper"
)

[[ -z "$SELECTED_WALL" ]] && exit 0

SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# === SET WALLPAPER ===
matugen image "$SELECTED_PATH"

# === UPDATE SYMLINK ===
ln -sf "$SELECTED_PATH" "$SYMLINK_PATH"
