# #!/bin/bash

# CLOCK="$HOME/.config/sketchybar/clock"
# PID=$(pgrep -f "$CLOCK")
# if [ -z "$PID" ]; then
#   sketchybar --set date icon="$(date +'%d.%m.%y')"
# fi
# sketchybar --set date label="$(date +':%u')"

# sleep $(echo "1 - $(date +%s.%N | cut -d'.' -f2) / 1000000000" | bc -l) && TIME="$(date +'%H:%M:%S:%u')"

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M:XX:%u')" \
                          update_freq=1
                          # icon.color=0xffff9500 \
                          # background.drawing=on \
                          # width=80 \
    # sketchybar --set date icon="$(date +'%H:%M:%S')" \
else
    sketchybar --set date icon="$(date +'%d.%m.%y:%u')" \
                          update_freq=120
                          # icon.color=0xffc7c7c7 \
                          # background.drawing=off \
                          # width=113 \
fi
