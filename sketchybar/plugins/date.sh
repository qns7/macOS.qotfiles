# #!/bin/bash

# CLOCK="$HOME/.config/sketchybar/clock"
# PID=$(pgrep -f "$CLOCK")
# if [ -z "$PID" ]; then
#   sketchybar --set date icon="$(date +'%d.%m.%y')"
# fi
# sketchybar --set date label="$(date +':%u')"

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M')" \
                          icon.color=0xff000000 \
                          background.drawing=on \
                          # width=80 \
                          # update_freq=30
else
    sketchybar --set date icon="$(date +'%d.%m.%y:%u')" \
                          background.drawing=off \
                          icon.color=0xffc7c7c7 \
                          # width=113 \
                          # update_freq=120
fi
