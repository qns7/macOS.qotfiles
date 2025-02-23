#!/bin/bash

sleep 5

STATUS=$(pgrep -x Viscosity)

if [ "$STATUS" = "" ]; then
    sketchybar --set viscosity icon.color=0xffc7c7c7
else
    sketchybar --set viscosity icon.color=0xffff9500
fi
