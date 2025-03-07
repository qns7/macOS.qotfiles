#!/bin/bash

sketchybar --add item kb q \
           --set kb script="$PLUGIN_DIR/kb.sh" \
                    click_script="$PLUGIN_DIR/click_kb.sh" \
                    icon="KB" \
                    icon.color=0xff4e4e4e \
                    icon.font.family="SF Mono" \
                    icon.font.style="Medium" \
                    icon.width=23 \
                    icon.y_offset=0
