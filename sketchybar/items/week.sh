#!/bin/bash

sketchybar --add item week right \
           --set week script="$PLUGIN_DIR/week.sh" \
                      click_script="$PLUGIN_DIR/click_week.sh" \
                      icon=":" \
                      icon.color=0xffc7c7c7 \
                      icon.width=10 \
                      icon.y_offset=0 \
                      label="$(date +'%V')" \
                      label.padding_left=2 \
                      label.width=24 \
                      label.y_offset=0 \
                      update_freq=120
