#!/bin/bash

sketchybar --add item ram q \
           --set ram script="$PLUGIN_DIR/ram.sh" \
                     click_script="$PLUGIN_DIR/click_ram.sh" \
                     icon.padding_right=3 \
                     icon.width=82 \
                     icon.align=right \
                     icon.y_offset=0 \
                     update_freq=30 \
           --subscribe ram system_woke #power_source_change
