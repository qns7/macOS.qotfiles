#!/bin/bash

sleep 5

STATUS=$(pgrep -x "Cloudflare WARP" && pgrep -x "CloudflareWARP")

if [ "$STATUS" = "" ]; then
    sketchybar --set cfwarp icon.color=0xff4e4e4e
else
    sketchybar --set cfwarp icon.color=0xffc7c7c7
fi
