#!/bin/bash

sketchybar --add item cfwarp right \
           --set cfwarp script="$PLUGIN_DIR/cfwarp.sh" \
                        click_script="$PLUGIN_DIR/click_cfwarp.sh" \
                        icon="CFW" \
                        icon.font.family="SF Mono" \
                        icon.font.style="Medium" \
                        icon.width=34 \
                        icon.y_offset=0
