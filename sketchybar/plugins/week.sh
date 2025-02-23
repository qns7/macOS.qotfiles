#!/bin/bash

if [ $(yabai -m config menubar_opacity) = 0.0000 ]; then
    sketchybar --set week label="$(date +'%V')" \
                          label.font.size=19 \
                          label.color=0xffc7c7c7 \
                          label.padding_left=2 \
                          label.y_offset=0
else
    sketchybar --set week label="􀤁" \
                          label.font.size=17 \
                          label.color=0xffff9500 \
                          label.padding_left=1 \
                          label.y_offset=1
fi
