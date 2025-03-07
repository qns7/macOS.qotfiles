#!/bin/bash

sketchybar --add item fn right \
           --set fn script="$PLUGIN_DIR/fn.sh" \
                    icon="FN" \
                    icon.font.family="SF Mono" \
                    icon.font.style="Medium" \
                    icon.width=23 \
                    icon.y_offset=0
