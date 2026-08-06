#!/bin/bash

# STATUS=$(pgrep -x "LogiTune")
# 
sketchybar --set logi icon.color=0xffff9500
sleep 0.1
#! pgrep -x "LogiTune" > /dev/null && (open -a "Logi Tune" && sleep 1 && skhd -k "ctrl - down") || open -a "Logi Tune"
! pgrep -x "LogiTune" > /dev/null && open -a "Logi Tune" && sleep 3.7 && skhd -k "ctrl + fn - c"
sleep 1
/Users/q/.config/sketchybar/plugins/logi.sh
