#!/bin/bash

OUTPUT="$(SwitchAudioSource -c | tr -cd '[:alpha:]')"

if [ "$SENDER" = "volume_change" ]; then
    if [ $INFO = 0 ] ; then
        sketchybar --set audio icon="XX:"
        sketchybar --set audio icon.color=0xffff9500
        sketchybar --set audio label.color=0xffff9500
    elif [[ $OUTPUT =~ ^(SoundIDReference|BabyfacePro)$ ]]; then 
        sketchybar --set audio icon="AI:"
        sketchybar --set audio icon.color=0xffc7c7c7
        sketchybar --set audio label.color=0xffc7c7c7
    else
        sketchybar --set audio icon="$(if [ "$INFO" -eq 100 ]; then echo "FF:"; else printf "%02d:" "$INFO"; fi)"
        sketchybar --set audio icon.color=0xffc7c7c7
        sketchybar --set audio label.color=0xffc7c7c7
    fi
fi
sketchybar --set audio label="$OUTPUT"
