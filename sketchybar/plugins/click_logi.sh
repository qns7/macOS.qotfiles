#!/bin/bash

STATUS=$(pgrep -x "LogiTune")

sketchybar --set logi icon.color=0xffff9500
sleep 0.1
open -a "Logi Tune"
sleep 1
/Users/q/.config/sketchybar/plugins/logi.sh
