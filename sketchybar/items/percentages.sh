#!/bin/bash

sketchybar --add item percentages q \
           --set percentages script="$PLUGIN_DIR/percentages.sh" \
                             icon.padding_right=3 \
                             icon.y_offset=0 \
                             update_freq=30 \
           --subscribe percentages system_woke power_source_change
