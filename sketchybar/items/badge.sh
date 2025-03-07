#!/bin/bash

sketchybar --add item badge right \
           --set badge script="$PLUGIN_DIR/badge.sh" \
                       click_script="$PLUGIN_DIR/click_badge.sh" \
                       icon.width=23 \
                       icon.align=center \
                       update_freq=30 \
           --subscribe badge front_app_switched
