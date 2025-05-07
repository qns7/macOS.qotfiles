#!/bin/bash

sketchybar --add item radio right \
           --set radio script="$PLUGIN_DIR/radio.sh" \
                       click_script="$PLUGIN_DIR/click_radio.sh" \
                       icon="􀪕" \
                       icon.font.size="16" \
                       icon.color=0xff4e4e4e \
                       icon.font.family="SF Mono" \
                       icon.font.style="Medium" \
                       icon.width=23 \
                       icon.y_offset=0
