#!/bin/bash

sketchybar --add item elgato right \
           --set elgato script="$PLUGIN_DIR/elgato.sh" \
                        click_script="$PLUGIN_DIR/click_elgato.sh" \
                        icon="ELG" \
                        icon.color=0xff4e4e4e \
                        icon.font.family="SF Mono" \
                        icon.font.style="Medium" \
                        icon.width=34 \
                        icon.y_offset=0
