#!/bin/bash

sketchybar --add item shutdown center \
           --set shutdown click_script="$PLUGIN_DIR/click_shutdown.sh" \
                          icon=":shutdwn:" \
                          icon.color=0xff4e4e4e \
                          icon.padding_right=8 \
                          icon.width=110 \
                          icon.align=right \
                          icon.y_offset=0 \
                          updates=off
