#!/bin/bash

# CLOCK="$HOME/.config/sketchybar/clock"
# PID=$(pgrep -f "$CLOCK")
# if [ -z "$PID" ]; then
#   sketchybar --set date icon="$(date +'%d.%m.%y')"
# fi
# sketchybar --set date label="$(date +':%u')"

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M:XX:%u')"
    sketchybar --set date update_freq=30
else
    sketchybar --set date icon="$(date +'%d.%m.%y:%u')"
    sketchybar --set date update_freq=120
fi
