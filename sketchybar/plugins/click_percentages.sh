#!/bin/bash

if pgrep -xq "Disk Utility"; then
    FRONTMOST="$(osascript -e 'tell application "System Events" to get name of first process whose frontmost is true')"
    if [ "$FRONTMOST" = "Disk Utility" ]; then
        pkill -x "Disk Utility"
        # DU was frontmost → now closed: revert to default color
        sketchybar --set percentages icon.color=0xffc7c7c7
    else
        open -a "Disk Utility"
        # DU was open but not frontmost → focus it; color stays dimmed
    fi
else
    open -a "Disk Utility"
    # DU was closed → now open: immediately show dimmed color
    sketchybar --set percentages icon.color=0xff4e4e4e
fi
