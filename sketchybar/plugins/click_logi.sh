#!/bin/bash

STATUS=$(pgrep -x "LogiTune")

sketchybar --set logi icon.color=0xffff9500
yabai -m config mouse_follows_focus on # alttab
sleep 0.1
open -a "Logi Tune"
yabai -m config mouse_follows_focus off # alttab
/Users/q/.config/sketchybar/plugins/logi.sh
