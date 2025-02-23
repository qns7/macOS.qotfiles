#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
    if [ "$INFO" = "TRex" ]; then
        sketchybar --set front_app icon.color=0xffc7c7c7
        TEXT="..."
    elif [ "$INFO" = "iTerm2" ]; then
        sketchybar --set front_app icon.color=0xffff9500
        TEXT="$INFO"
    else
        sketchybar --set front_app icon.color=0xffc7c7c7
        TEXT="$INFO"
    fi
    sketchybar --set front_app icon="$TEXT" 
fi
