#!/bin/bash

sketchybar --add item cfwarp right \
           --set cfwarp script="$PLUGIN_DIR/cfwarp.sh" \
                        click_script="$PLUGIN_DIR/click_cfwarp.sh" \
                        icon="􀙶" \
                        icon.color=0xff4e4e4e \
                        icon.padding_right=5 \
                        icon.y_offset=0
