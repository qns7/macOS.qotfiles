#!/bin/bash

sleep 5

MIC_STATUS="/tmp/tmx.lock"

if [[ -f "$MIC_STATUS" ]]; then
    READ_STATUS=$(cat "$MIC_STATUS")
else
    READ_STATUS="f7"
fi

if [ "$READ_STATUS" == "f8" ]; then
    sketchybar --set mic icon.color=0xff4e4e4e
else
    sketchybar --set mic icon.color=0xffc7c7c7
fi
