#!/bin/zsh
# grim -g "$(slurp)" &

# === CONFIG ===
timestamp=$(date +%Y-%m-%d-%H%M%S)
dir="$(xdg-user-dir PICTURES)/ScreenShots"
filename="$dir/Shot-${timestamp}.png"

# Create dir if not exists
[ -d "$dir" ] || mkdir -p "$dir"

# === Wayland Get Current Monitor (pakai wlr-randr) ===
get_current_monitor() {
    local mx my
    mx=$(hyprctl cursorpos | awk '{print int($1)}')
    my=$(hyprctl cursorpos | awk '{print int($2)}')

    wlr-randr | awk '
        /^([A-Za-z0-9-]+) connected/ { name=$1 }
        /Position:/ { split($2,pos,","); x=pos[1]; y=pos[2] }
        /Resolution:/ { split($2,res,"x"); w=res[1]; h=res[2] }
        { if(name!="") mon[name]=w"x"h"+"x"+"y }
        END {
            for(m in mon){
                split(mon[m], part, /[x+]/)
                mw=part[1]; mh=part[2]; mx0=part[3]; my0=part[4]
                if('"$mx"' >= mx0 && '"$mx"' <= mx0+mw &&
                    '"$my"' >= my0 && '"$my"' <= my0+mh) {
                    print mw"x"mh"+"mx0"+"my0
                    exit
                }
            }
        }
    '
}

# === NOTIFICATION ===
show_notification() {
    if [[ -e "$filename" ]]; then
        notify-send -u low -i "$filename" "Screenshot" "Screenshot saved and copied to clipboard"
    else
        notify-send -u low -i user-trash "Screenshot" "Screenshot canceled"
    fi
}

# === COPY TO CLIPBOARD ===
copy_screenshot() {
    wl-copy < "$filename"
}

# === TAKE SCREENSHOT ===
take_screenshot() {
    local mode="$1"
    local all="$2"

    case "$mode" in
        full)
            if [[ "$all" == "true" ]]; then
                grim "$filename"
            else
                local geo=$(get_current_monitor)
                if [[ -n "$geo" ]]; then
                    grim -g "$geo" "$filename"
                else
                    grim "$filename"
                fi
            fi
            ;;
        select)
            grim -g "$(slurp)" "$filename"
            ;;
    esac

    # Jika grim sukses
    if [[ $? -eq 0 ]]; then
        paplay /usr/share/sounds/freedesktop/stereo/screen-capture.oga >/dev/null 2>&1
        copy_screenshot
        show_notification
    fi
}

# === COUNTDOWN ===
countdown() {
    for sec in $(seq "$1" -1 1); do
        notify-send -u low -t 1100 "Taking shot in: $sec"
        sleep 1
    done
}

# === ARGS ===
case "$1" in
    --now)
        take_screenshot full false
        ;;
    --in5)
        countdown 5 && take_screenshot full false
        ;;
    --sel)
        take_screenshot select false
        ;;
    --all)
        take_screenshot full true
        ;;
    *)
        # default full monitor aktif
        take_screenshot full false
        ;;
esac
