#!/bin/bash

sketchybar --add item date right \
           --set date script="$PLUGIN_DIR/date.sh"  \
                      click_script="$PLUGIN_DIR/click_date.sh" \
                      icon.width=57 \
                      icon.y_offset=0 \
                      label.width=22 \
                      label.color=0xffc7c7c7 \
                      update_freq=120
                      # icon.width=113=91+22|w/o_year_57+22=79
