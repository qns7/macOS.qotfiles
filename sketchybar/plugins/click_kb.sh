#!/bin/bash

STATUS=$(pgrep -x KeyboardCleanTool)

if [ "$STATUS" = "" ]; then
    sketchybar --set kb icon.color=0xffff9500
    sleep 0.37
    killall mouseless
    '/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --select-profile 'OFF'
    open -a "KeyboardCleanTool"
else
    sketchybar --set kb icon.color=0xff4e4e4e
    sleep 0.37
    osascript -e 'tell application "KeyboardCleanTool" to quit'
    '/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --select-profile 'q'
    open -a "mouseless"
fi
