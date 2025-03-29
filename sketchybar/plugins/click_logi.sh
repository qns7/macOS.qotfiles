#!/bin/bash

STATUS=$(pgrep -x "LogiTune")

sketchybar --set logi icon.color=0xffff9500
# yabai -m config mouse_follows_focus on # alttab
sleep 0.1
open -a "Logi Tune"
# skhd -k "fn - x"
# yabai -m config mouse_follows_focus off # alttab
# doesn't work because LogiTune has no normal window
/Users/q/.config/sketchybar/plugins/logi.sh
