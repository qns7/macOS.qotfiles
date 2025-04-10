#!/bin/bash

sketchybar --add item space_info left \
           --set space_info script="$PLUGIN_DIR/space_info.sh" \
                            icon.font.size="21" \
                            icon.width=24 \
                            icon.align=center \
                            label.color=0xffc7c7c7 \
                            label.padding_left=10 \
                            label.width=102 \
           --subscribe space_info display_change space_change # space_windows_change via yabai
