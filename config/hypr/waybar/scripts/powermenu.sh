#!/usr/bin/env bash

options=(
    "󰍁"
    ""
    "󰗽"
    "󰜉"
    "󰐥"
)

rofi_cmd() {
    rofi -dmenu \
        -p "Sayonara~ ${USER}-kun" \
        -mesg "Uptime: $(uptime -p | sed -e 's/up //g')" \
        -no-click-to-exit \
        -theme "$HOME"/.config/hypr/rofi/powermenu.rasi
}

chosen=$(printf "%s\n" "${options[@]}" | rofi_cmd)

case $chosen in
    "󰐥")
        systemctl poweroff
        ;;
    "󰜉")
        systemctl reboot
        ;;
    "󰍁")
        ~/.config/hypr/scripts/hyprlock.sh
        ;;
    "")
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    "󰗽")
        hyprctl dispatch exit
        ;;
esac
