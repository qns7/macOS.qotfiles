#!/bin/bash

STATUS=$(pgrep -x Viscosity)

if [ "$STATUS" = "" ]; then
    sketchybar --set viscosity icon.color=0xffff9500
    open -a "Viscosity"; osascript -e 'tell application "Viscosity" to connect "KIT IPv4"'
else
    sketchybar --set viscosity icon.color=0xffc7c7c7
    osascript -e 'tell application "Viscosity" to quit'
fi
