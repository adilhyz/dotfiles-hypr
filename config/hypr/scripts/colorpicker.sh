#!/bin/bash

# Pick color using hyprpicker (raw hex)
color=$(hyprpicker -r)

# Icon preview file
image="/tmp/${color}.png"

main() {
    if [[ "$color" ]]; then
        # Copy hex to clipboard
        echo -n "$color" | wl-copy

        # Generate preview icon (50x50)
        convert -size 50x50 xc:"$color" "$image"

        # Send notify using notify-send
        notify-send \
            -i "$image" \
            "$color" \
            "Copied to clipboard."
    fi
}

main
