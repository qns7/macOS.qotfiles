#!/bin/bash

sleep 3

STATUS=$(pgrep -x "LogiTune")

if [ "$STATUS" = "" ]; then
    sketchybar --set logi icon.color=0xff4e4e4e
else
    sketchybar --set logi icon.color=0xffff9500
fi
