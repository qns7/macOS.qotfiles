#!/bin/bash

sketchybar --add item fn q \
           --set fn script="$PLUGIN_DIR/fn.sh" \
                    click_script="$PLUGIN_DIR/click_fn.sh" \
                    icon="FN" \
                    icon.font.family="SF Mono" \
                    icon.font.style="Medium" \
                    icon.width=23 \
                    icon.y_offset=0
