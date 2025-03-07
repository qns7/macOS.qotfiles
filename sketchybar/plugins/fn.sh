#!/bin/bash

sleep 3

if [ "$(defaults read -g com.apple.keyboard.fnState)" = 1 ]; then
    sketchybar --set fn icon.color=0xffc7c7c7
else
    sketchybar --set fn icon.color=0xffff9500
fi
