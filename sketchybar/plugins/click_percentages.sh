#!/bin/bash

if pgrep -xq "Disk Utility"; then
    pkill -x "Disk Utility"
    # DU was open → now closed: revert to default color
    sketchybar --set percentages icon.color=0xffc7c7c7
else
    open -a "Disk Utility"
    # DU was closed → now open: immediately show dimmed color
    sketchybar --set percentages icon.color=0xff4e4e4e
fi
