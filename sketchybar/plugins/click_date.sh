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
fi
/Users/q/.config/sketchybar/plugins/date.sh
sleep 3.7 # 1.37
rm /tmp/show.clock
/Users/q/.config/sketchybar/plugins/date.sh
