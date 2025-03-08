#!/bin/bash

sketchybar --add item fn q \
           --set fn script="$PLUGIN_DIR/fn.sh" \
                    click_script="$PLUGIN_DIR/click_fn.sh" \
                    icon="SF" \
                    icon.color=0xff4e4e4e \
                    icon.width=21 \
                    icon.y_offset=0
