#!/bin/bash

sleep 3

if [ "$(defaults read -g com.apple.keyboard.fnState)" = 1 ]; then
    sketchybar --set fn icon.color=0xff4e4e4e
else
    sketchybar --set fn icon.color=0xffff9500
fi
