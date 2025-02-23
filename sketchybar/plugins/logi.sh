#!/bin/bash

sleep 5

STATUS=$(pgrep -x "LogiTune")

if [ "$STATUS" = "" ]; then
    sketchybar --set logi icon.color=0xffc7c7c7
else
    sketchybar --set logi icon.color=0xffff9500
fi
