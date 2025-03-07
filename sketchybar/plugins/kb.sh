#!/bin/bash

sleep 3

STATUS=$(pgrep -x KeyboardCleanTool)

if [ "$STATUS" = "" ]; then
    sketchybar --set kb icon.color=0xff4e4e4e
else
    sketchybar --set kb icon.color=0xffff9500
fi
