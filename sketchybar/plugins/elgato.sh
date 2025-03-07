#!/bin/bash

sleep 3

STATUS=$(pgrep -x "Elgato Control Center")

if [ "$STATUS" = "" ]; then
    sketchybar --set elgato icon.color=0xff4e4e4e
else
    sketchybar --set elgato icon.color=0xffff9500
fi
