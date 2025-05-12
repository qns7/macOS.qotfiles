#!/bin/bash

if [ -f /tmp/show.clock ]; then
    rm /tmp/show.clock
else
    touch /tmp/show.clock
fi
/Users/q/.config/sketchybar/plugins/date.sh
sleep 3.7 # 1.37
rm /tmp/show.clock
/Users/q/.config/sketchybar/plugins/date.sh
