#!/bin/bash

BADGE=$(lsappinfo -all info -app Thunderbird -only StatusLabel | sed -nr 's/\"StatusLabel\"=\{ \"label\"=\"(.+)\" \}$/\1/p')

if [ -n "$BADGE" ] && [ "$BADGE" -ge 1 ]; then
    sketchybar --set badge updates=on \
                           icon="􀍖" \
                           icon.color=0xffffffff
elif [ "$(pgrep -x thunderbird)" = "" ]; then
    sketchybar --set badge updates=off \
                           icon="􀏍" \
                           icon.color=0xff4e4e4e
else
    sketchybar --set badge updates=on \
                           icon="􀍖" \
                           icon.color=0xff4e4e4e
fi
