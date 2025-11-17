#!/bin/sh

if pgrep -x "wlsunset" > /dev/null
then
    pkill -USR1 wlsunset > /dev/null 2>&1
else
    wlsunset -l -6.9 -L 107.6 -t 3800 -T 6500 > /dev/null 2>&1 &
fi
