#!/bin/bash

SWAP="$(sysctl vm.swapusage | awk '{print $7}' | sed 's/M//' | awk '{gb = $1 / 1024; printf "%02d\n", (gb*10 == int(gb*10)) ? gb*10 : int(gb*10) + 1}')"
RAM="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')"
# DISK1="$(df -H | grep -E '^(/dev/disk3s5).' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%')"
# DISK1="$(df -H | grep -E '^(/dev/disk1s5).' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%')"
# DISK1="$(df -H | grep -E '/System/Volumes/Data' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%')"
# DISK1="$(df -H | grep -E '^/dev/.* /System/Volumes/Data$' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%')"
# DISK2="$(df -H | grep -E 'macData' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%' )"
# DISK2="${DISK2:-XX}"
# DISK3="$(df -H | grep -E 'Screenshots' | awk '{ printf("%02.0f\n", $5) }' | tr -d '%' )"
# DISK3="${DISK3:-XX}"
# BATTERY="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
# [ "$BATTERY" -eq 100 ] && BATTERY="FF"
# the others won't get to 100, so no worries

# if [ "$BATTERY" = "" ]; then
#     exit 0
# fi

# CHARGING="$(pmset -g batt | grep 'AC Power')"

# Memory pressure color
PRESSURE="$(sysctl -n kern.memorystatus_vm_pressure_level)"
case "$PRESSURE" in
    2) ICON_COLOR="icon.color=0xFFFDBC40" ;;  # 🟡 apple yellow #FDBC40
    4) ICON_COLOR="icon.color=0xFFFC5753" ;;  # 🔴 apple red #FC5753
    *) ICON_COLOR="icon.color=0xffc7c7c7" ;;  # 🟢 apple green : 0xFF28C840, default: 0xffc7c7c7 #36C84B real, claude got it wrong - yellow and red already refined..
esac

sketchybar --set ram $ICON_COLOR icon="${SWAP}S.${RAM}R"

# if [[ "$CHARGING" != "" ]]; then
#     sketchybar --set percentages $ICON_COLOR icon="${SWAP}S.${RAM}R:${DISK1}I.${DISK2}E.${DISK3}S:${BATTERY}C"
# else
#     sketchybar --set percentages $ICON_COLOR icon="${SWAP}S.${RAM}R:${DISK1}I.${DISK2}E.${DISK3}S:${BATTERY}B"
# fi