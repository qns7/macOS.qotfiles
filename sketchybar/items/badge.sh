#!/bin/bash

sketchybar --add item badge right \
           --set badge script="$PLUGIN_DIR/badge.sh" \
                       click_script="$PLUGIN_DIR/click_badge.sh" \
                       icon.font.size=17 \
                       icon.padding_right=1 \
                       update_freq=30 \
           --subscribe badge front_app_switched
