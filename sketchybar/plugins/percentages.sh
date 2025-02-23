#!/bin/bash

RAM="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')"
DISK1="$(df -H | grep -E '^(/dev/disk3s5).' | awk '{ printf ("%s\n", $5) }' | tr -d '%')"
DISK2="$(df -H | grep -E 'macData' | awk '{print $5}' | tr -d '%')"
BATTERY="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"

if [ "$BATTERY" = "" ]; then
    exit 0
fi

CHARGING="$(pmset -g batt | grep 'AC Power')"

if [[ "$CHARGING" != "" ]]; then
    sketchybar --set percentages icon="${RAM}R:${DISK1}I.${DISK2}E:${BATTERY}C"
else
    sketchybar --set percentages icon="${RAM}R:${DISK1}I.${DISK2}E:${BATTERY}B"
fi
