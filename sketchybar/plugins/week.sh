#!/bin/bash

if [ $(/opt/homebrew/bin/yabai -m config menubar_opacity) = 0.0000 ]; then
    /opt/homebrew/bin/sketchybar --set week label.color=0xffc7c7c7
else
    /opt/homebrew/bin/sketchybar --set week label.color=0xffff9500
fi
