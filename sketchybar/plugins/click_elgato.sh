#!/bin/bash

STATUS=$(pgrep -x "Elgato Control Center")

if [ "$STATUS" = "" ]; then
    sketchybar --set elgato icon.color=0xffff9500
    # sleep 0.37
    open -a "Elgato Control Center"
    sleep 0.1
    open -a "Elgato Control Center"
    sleep 0.1
    skhd -k "ctrl - down"
else
    sketchybar --set elgato icon.color=0xff4e4e4e
    killall "Elgato Control Center" &> /dev/null
    # sleep 0.37
    # osascript -e 'tell application "Elgato Control Center" to quit'
fi
/Users/q/.config/sketchybar/plugins/elgato.sh
