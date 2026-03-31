#!/bin/bash

sketchybar --add item sec_dot right \
           --set sec_dot icon="" \
                         click_script="$PLUGIN_DIR/click_sec_dot.sh" \
                         icon.width=7 \
                         icon.y_offset=0 \
                         updates=off
