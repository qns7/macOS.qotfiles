#!/bin/bash

sketchybar --add item remote right \
           --set remote script="$PLUGIN_DIR/remote.sh" \
                        click_script="$PLUGIN_DIR/click_remote.sh" \
                        icon="REM" \
                        icon.color=0xff4e4e4e \
                        icon.font.family="SF Mono" \
                        icon.font.style="Medium" \
                        icon.width=34 \
                        icon.y_offset=0
