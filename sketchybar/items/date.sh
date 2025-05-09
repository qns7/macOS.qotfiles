#!/bin/bash

sketchybar --add item date right \
           --set date script="$PLUGIN_DIR/date.sh"  \
                      click_script="$PLUGIN_DIR/click_date.sh" \
                      icon.width=91 \
                      icon.y_offset=0 \
                      label.color=0xffc7c7c7 \
                      label.width=22 \
                      update_freq=120
