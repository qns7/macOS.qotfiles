#!/bin/bash

STATUS=$(pgrep -x "Remote for Mac")

if [ "$STATUS" = "" ]; then
    sketchybar --set remote icon.color=0xffff9500
    sleep 1
    open -a "Remote for Mac"
else
    sketchybar --set remote icon.color=0xff4e4e4e
    sleep 1
    # osascript -e 'tell application "Remote for Mac" to quit'
    # killall "cewd"
    # sleep 1
    # killall "Remote for Mac"
    pkill -9 -f "Remote for Mac"
    sleep 1
    /Users/q/.config/sketchybar/plugins/remote.sh
fi
