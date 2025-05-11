#!/bin/bash

# CLOCK="$HOME/.config/sketchybar/clock"
# PID=$(pgrep -f "$CLOCK")
# if [ -z "$PID" ]; then
#   sketchybar --set date icon=""
#   "$CLOCK" &
# else
#   kill "$PID"
# fi
# ~/.config/sketchybar/plugins/date.sh

if [ -f /tmp/show.clock ]; then
    rm /tmp/show.clock
else
    touch /tmp/show.clock
fi
/Users/q/.config/sketchybar/plugins/date.sh
