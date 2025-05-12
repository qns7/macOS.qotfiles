#!/bin/bash

sketchybar --set week label="$(date +'%V')"
if [ $(/opt/homebrew/bin/yabai -m config menubar_opacity) = 0.0000 ]; then
    /opt/homebrew/bin/sketchybar --set week label.color=0xffc7c7c7    
else
    /opt/homebrew/bin/sketchybar --set week label.color=0xffff9500
fi
    # focused_display_index=$(/opt/homebrew/bin/yabai -m query --displays --display | jq -r '.index')
    # display_info=$(/opt/homebrew/bin/yabai -m query --displays | /opt/homebrew/bin/jq -r --arg index "$focused_display_index" '.[] | select(.index == ($index | tonumber))')
    # x=$(echo "$display_info" | /opt/homebrew/bin/jq -r '.frame.x')
    # y=$(echo "$display_info" | /opt/homebrew/bin/jq -r '.frame.y')
    # w=$(echo "$display_info" | /opt/homebrew/bin/jq -r '.frame.w')
    # target_x=$(printf "%.0f" "$(echo "$x + $w - 37" | bc)")
    # target_y=$(printf "%.0f" "$y")
    # /opt/homebrew/bin/cliclick "m:$target_x,$target_y"
