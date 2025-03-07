#!/bin/bash

sketchybar --add item elgato right \
           --set elgato script="$PLUGIN_DIR/elgato.sh" \
                        click_script="$PLUGIN_DIR/click_elgato.sh" \
                        icon="EKL" \
                        icon.font.family="SF Mono" \
                        icon.font.style="Medium" \
                        icon.width=34 \
                        icon.color=0xffc7c7c7 \
                        icon.y_offset=0
