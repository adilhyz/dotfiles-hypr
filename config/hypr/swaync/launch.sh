#!/bin/bash

CACHE_FLAG="$HOME/.cache/waybar-disabled"

# ╭──────────────────────────────────────────────────────────╮
# │ Quit all running swaync instances                        │
# ╰──────────────────────────────────────────────────────────╯
if [ -f "$CACHE_FLAG" ]; then
    pkill -x swaync
    exit 0
fi

if pgrep -x swaync >/dev/null ; then
    pkill -x swaync
fi

swaync --config "$HOME/.config/hypr/swaync/config.json" --style "$HOME/.config/hypr/swaync/style.css" &
