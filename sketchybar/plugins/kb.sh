#!/bin/bash

sleep 3

STATUS=$(pgrep -x KeyboardCleanTool)

if [ "$STATUS" = "" ]; then
    sketchybar --set kb icon.color=0xffc7c7c7
else
    sketchybar --set kb icon.color=0xffff9500
fi
