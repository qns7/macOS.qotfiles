#!/bin/bash

sketchybar --add item kb q \
           --set kb script="$PLUGIN_DIR/kb.sh" \
                    click_script="$PLUGIN_DIR/click_kb.sh" \
                    icon="KC" \
                    icon.color=0xff4e4e4e \
                    icon.width=21 \
                    icon.y_offset=0
