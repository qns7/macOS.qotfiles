#!/bin/bash

sketchybar --add item restart center \
           --set restart click_script="$PLUGIN_DIR/click_restart.sh" \
                         icon=":restart:" \
                         icon.color=0xff4e4e4e \
                         icon.padding_left=2 \
                         icon.width=110 \
                         icon.align=left \
                         icon.y_offset=0 \
                         updates=off
