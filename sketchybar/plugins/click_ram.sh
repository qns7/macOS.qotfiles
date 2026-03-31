#!/bin/bash

# if pgrep -xq "Activity Monitor"; then
#     pkill -x "Activity Monitor"
# else
#     open -a "Activity Monitor"
# fi
if pgrep -xq "Activity Monitor"; then
    pkill -x "Activity Monitor"
    # AM was open → now closed: immediately revert to pressure-based color
    PRESSURE="$(sysctl -n kern.memorystatus_vm_pressure_level)"
    case "$PRESSURE" in
        2) ICON_COLOR="icon.color=0xFFFDBC40" ;;
        4) ICON_COLOR="icon.color=0xFFFC5753" ;;
        *) ICON_COLOR="icon.color=0xffc7c7c7" ;;
    esac
    sketchybar --set ram $ICON_COLOR
else
    open -a "Activity Monitor"
    # AM was closed → now open: immediately show dimmed color
    sketchybar --set ram icon.color=0xff4e4e4e
fi