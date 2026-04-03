#!/bin/bash

CURRENT_COLOR=$(/opt/homebrew/bin/sketchybar --query week | jq -r '.label.color')
if [ "$CURRENT_COLOR" = "0xffc7c7c7" ]; then
    /opt/homebrew/bin/sketchybar --set week label.color=0xffff9500
else
    /opt/homebrew/bin/sketchybar --set week label.color=0xffc7c7c7
fi
/Users/q/bin/yabaitoggle "/opt/homebrew/bin/yabai -m config menubar_opacity"
/Users/q/.config/sketchybar/plugins/week.sh
