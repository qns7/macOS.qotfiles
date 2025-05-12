#!/bin/bash

# CLOCK="$HOME/.config/sketchybar/clock"
# PID=$(pgrep -f "$CLOCK")
# if [ -z "$PID" ]; then
#   sketchybar --set date icon="" \
#                         updates=off
#   "$CLOCK" &
#   # ~/.config/sketchybar/plugins/date.sh
#   # sleep 1.37
#   # kill "$PID"
#   # sketchybar --set date updates=on
#   # ~/.config/sketchybar/plugins/date.sh
#   # sketchybar --set date updates=off
# else
#   kill "$PID"
#   sketchybar --set date updates=on
# fi
# ~/.config/sketchybar/plugins/date.sh

if [ -f /tmp/show.clock ]; then
    rm /tmp/show.clock
else
    touch /tmp/show.clock
    # sleep $(echo "1 - $(date +%s.%N | cut -d'.' -f2) / 1000000000" | bc -l)
    # sketchybar --set week icon.color=0xff4e4e4e
    # sketchybar --set week label.color=0xff4e4e4e
fi
/Users/q/.config/sketchybar/plugins/date.sh
sleep 3.7 # 1.37
rm /tmp/show.clock
# sketchybar --set week icon.color=0xffc7c7c7
# sketchybar --set week label.color=0xffc7c7c7
/Users/q/.config/sketchybar/plugins/date.sh
