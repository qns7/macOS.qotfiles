#!/bin/bash

sketchybar --add item logi right \
           --set logi script="$PLUGIN_DIR/logi.sh" \
                      click_script="$PLUGIN_DIR/click_logi.sh" \
                      icon="CAM" \
                      icon.color=0xff4e4e4e \
                      icon.font.family="SF Mono" \
                      icon.font.style="Medium" \
                      icon.width=34 \
                      icon.y_offset=0
