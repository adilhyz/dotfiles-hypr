#!/bin/bash

AUDIO_MONITOR=$(pactl list sources | grep Name | grep -i "monitor" | awk '{print $2}' | head -n 1)
OUTPUT="$HOME/Videos/record_$(date +'%Y-%m-%d_%H-%M-%S').mp4"

# Detect running wf-recorder
if pgrep -x "wf-recorder" > /dev/null; then
    echo "Stopping wf-recorder..."
    pkill -2 wf-recorder   # SIGINT = stop gracefully
    notify-send "Recording stopped"
    exit 0
fi

if [ -z "$AUDIO_MONITOR" ]; then
    notify-send "❌ No audio monitor found!"
    exit 1
fi

[ -d "$HOME/Videos" ] || mkdir -p "$HOME/Videos"

notify-send "Recording starting" "With: $AUDIO_MONITOR"

# Start recording
wf-recorder -r 90 -c libx264 --ffmpeg-opts "preset=ultrafast" -a="$AUDIO_MONITOR" -f "$OUTPUT"
