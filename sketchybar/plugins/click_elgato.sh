#!/bin/bash

STATUS=$(pgrep -x "Elgato Control Center")

if [ "$STATUS" = "" ]; then
    sketchybar --set elgato icon.color=0xffff9500
    sleep 0.37
    open -a "Elgato Control Center"
    sleep 1
    open_or_focus "Elgato Control Center"
    skhd -k "ctrl - down"
else
    sketchybar --set elgato icon.color=0xff4e4e4e
    sleep 0.37
    osascript -e 'tell application "Elgato Control Center" to quit'
fi
