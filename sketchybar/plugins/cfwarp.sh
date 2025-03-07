#!/bin/bash

sleep 3

STATUS=$(pgrep -x "Cloudflare WARP" && pgrep -x "CloudflareWARP")

if [ "$STATUS" = "" ]; then
    sketchybar --set cfwarp icon.color=0xffc7c7c7
else
    sketchybar --set cfwarp icon.color=0xffff9500
fi
