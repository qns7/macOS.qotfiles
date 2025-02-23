#!/bin/bash

sketchybar --add item date right \
           --set date script="$PLUGIN_DIR/date.sh"  \
                      icon.width=113 \
                      icon.y_offset=0 \
                      update_freq=120
