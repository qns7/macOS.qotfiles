#!/bin/bash

if [ $(yabai -m config menubar_opacity) = 0.0000 ]; then
    sketchybar --set week label.color=0xffc7c7c7
else
    sketchybar --set week label.color=0xffff9500
fi
