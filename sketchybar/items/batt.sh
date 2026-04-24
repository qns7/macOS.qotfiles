#!/bin/bash

sketchybar --add item batt q \
           --set batt script="$PLUGIN_DIR/batt.sh" \
                             icon.padding_right=3 \
                             icon.width=36 \
                             icon.align=right \
                             icon.y_offset=0 \
                             update_freq=30 \
           --subscribe batt system_woke power_source_change
# width before 264
