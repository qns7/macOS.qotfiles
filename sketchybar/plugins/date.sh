#!/bin/bash

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M:XX:%u')"
    sketchybar --set date update_freq=1
else
    sketchybar --set date icon="$(date +'%d.%m.%y:%u')"
    sketchybar --set date update_freq=120
fi
