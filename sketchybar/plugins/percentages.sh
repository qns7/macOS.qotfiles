#!/bin/bash

RAM="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')"
DISK1="$(df -H | grep -E '^(/dev/disk3s5).' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%')"
DISK2="$(df -H | grep -E 'macData' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%' )"
DISK2="${DISK2:-XX}"
DISK3="$(df -H | grep -E 'Screenshots' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%' )"
DISK3="${DISK3:-XX}"
BATTERY="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
[ "$BATTERY" -eq 100 ] && BATTERY="FF"
# the others won't get to 100, so no worries

if [ "$BATTERY" = "" ]; then
    exit 0
fi

CHARGING="$(pmset -g batt | grep 'AC Power')"

if [[ "$CHARGING" != "" ]]; then
    sketchybar --set percentages icon="${RAM}R:${DISK1}I.${DISK2}E.${DISK3}S:${BATTERY}C"
else
    sketchybar --set percentages icon="${RAM}R:${DISK1}I.${DISK2}E.${DISK3}S:${BATTERY}B"
fi
