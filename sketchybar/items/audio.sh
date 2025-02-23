#!/bin/bash

sketchybar --add item audio e \
           --set audio script="$PLUGIN_DIR/audio.sh" \
                       click_script="$PLUGIN_DIR/click_audio.sh" \
                       icon.padding_left=3 \
                       icon.width=37 \
                       icon.y_offset=0 \
                       label.font.family="SF Pro" \
                       label.font.style="Medium" \
                       label.color=0xffc7c7c7 \
                       label.padding_right=3 \
           --subscribe audio volume_change
