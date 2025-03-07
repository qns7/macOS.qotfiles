#!/bin/bash

BADGE=$(lsappinfo -all info -app Thunderbird -only StatusLabel | sed -nr 's/\"StatusLabel\"=\{ \"label\"=\"(.+)\" \}$/\1/p')

if [ -n "$BADGE" ] && [ "$BADGE" -ge 1 ]; then
    sketchybar --set badge updates=on \
                           icon="􀍖" \
                           icon.font.size=17 \
                           icon.color=0xffffffff \
                           icon.y_offset=1
elif [ "$(pgrep -x thunderbird)" = "" ]; then
    sketchybar --set badge updates=off \
                           icon="XX" \
                           icon.font.size=19 \
                           icon.color=0xff4e4e4e \
                           icon.y_offset=0
else
    sketchybar --set badge updates=on \
                           icon="􀍖" \
                           icon.font.size=17 \
                           icon.color=0xff4e4e4e \
                           icon.y_offset=1
fi
