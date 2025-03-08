#!/bin/bash

if [ $(yabai -m config menubar_opacity) = 0.0000 ]; then
    sketchybar --set week label.color=0xffc7c7c7
else
    sketchybar --set week label.color=0xffff9500
fi
    # sketchybar --set week label="􀤁" \
    #                       label.font.size=17 \
    #                       label.color=0xffff9500 \
    #                       label.padding_left=1 \
    #                       label.y_offset=1
