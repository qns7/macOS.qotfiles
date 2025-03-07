#!/bin/bash

STATUS=$(pgrep -x KeyboardCleanTool)

if [ "$STATUS" = "" ]; then
    sketchybar --set kb icon.color=0xffff9500
    sleep 0.37
    open -a "KeyboardCleanTool"
else
    sketchybar --set kb icon.color=0xffc7c7c7
    sleep 0.37
    osascript -e 'tell application "KeyboardCleanTool" to quit'
fi
