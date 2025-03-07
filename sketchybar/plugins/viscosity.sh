#!/bin/bash

sleep 3

STATUS=$(pgrep -x Viscosity)

if [ "$STATUS" = "" ]; then
    sketchybar --set viscosity icon.color=0xff4e4e4e
else
    sketchybar --set viscosity icon.color=0xffff9500
fi
