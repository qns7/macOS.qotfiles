#!/bin/bash

sketchybar --add item mic right \
           --set mic script="$PLUGIN_DIR/mic.sh" \
                     click_script="$PLUGIN_DIR/click_mic.sh" \
                     icon="􀊱" \
                     icon.color=0xff4e4e4e \
                     icon.padding_right=4 \
                     icon.y_offset=0
