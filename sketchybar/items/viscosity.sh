#!/bin/bash

sketchybar --add item viscosity right \
           --set viscosity script="$PLUGIN_DIR/viscosity.sh" \
                           click_script="$PLUGIN_DIR/click_viscosity.sh" \
                           icon="VPN" \
                           icon.font.family="SF Mono" \
                           icon.font.style="Medium" \
                           icon.width=34 \
                           icon.y_offset=0
