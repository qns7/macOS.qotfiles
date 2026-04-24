#!/bin/bash

BATTERY="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
[ "$BATTERY" -eq 100 ] && BATTERY="FF"

if [ "$BATTERY" = "" ]; then
    exit 0
fi

CHARGING="$(pmset -g batt | grep 'AC Power')"

if [[ "$CHARGING" != "" ]]; then
    sketchybar --set batt $ICON_COLOR icon="${BATTERY}C"
else
    sketchybar --set batt $ICON_COLOR icon="${BATTERY}B"
fi
