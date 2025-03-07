#!/bin/bash

sleep 3

STATUS=$(pgrep -x "Remote for Mac")

if [ "$STATUS" = "" ]; then
    sketchybar --set remote icon.color=0xff4e4e4e
else
    sketchybar --set remote icon.color=0xffff9500
fi
