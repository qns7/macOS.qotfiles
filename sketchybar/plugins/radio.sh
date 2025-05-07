#!/bin/bash

sleep 3

PID_FILE="/tmp/mpv_radio.pid"
if [[ -f "$PID_FILE" ]]; then
    sketchybar --set radio icon.color=0xffff9500
else
    sketchybar --set radio icon.color=0xff4e4e4e
fi
