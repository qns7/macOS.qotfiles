#!/bin/bash

PID_FILE="/tmp/mpv_radio.pid"
skhd -k "fn - r"
sleep 0.1
if [[ -f "$PID_FILE" ]]; then
    sketchybar --set radio icon.color=0xffff9500
else
    sketchybar --set radio icon.color=0xff4e4e4e
fi
