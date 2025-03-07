#!/bin/bash

sleep 3

STATUS=$(pgrep -x "Elgato Control Center")

if [ "$STATUS" = "" ]; then
    sketchybar --set elgato icon.color=0xffc7c7c7
else
    sketchybar --set elgato icon.color=0xffff9500
fi
