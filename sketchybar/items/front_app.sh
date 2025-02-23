#!/bin/bash

sketchybar --add item front_app left \
           --set front_app script="$PLUGIN_DIR/front_app.sh" \
                           icon.font.family="SF Pro" \
                           icon.font.style="Medium" \
                           icon.padding_right=3 \
                           icon.y_offset=0 \
           --subscribe front_app front_app_switched
