#!/bin/bash

STATUS=$(pgrep -x "Elgato Control Center")

if [ "$STATUS" = "" ]; then
    sketchybar --set elgato icon.color=0xffff9500
    sleep 1
    open -a "Elgato Control Center"
else
    sketchybar --set elgato icon.color=0xffc7c7c7
    sleep 1
    osascript -e 'tell application "Elgato Control Center" to quit'
fi
