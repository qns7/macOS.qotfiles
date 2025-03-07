#!/bin/bash

sleep 3

STATUS=$(pgrep -x "Remote for Mac")

if [ "$STATUS" = "" ]; then
    sketchybar --set remote icon.color=0xffc7c7c7
else
    sketchybar --set remote icon.color=0xffff9500
fi
