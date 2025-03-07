#!/bin/bash

STATUS=$(pgrep -x "Cloudflare WARP" && pgrep -x "CloudflareWARP")

if [ "$STATUS" = "" ]; then
    sketchybar --set cfwarp icon.color=0xffff9500
    sleep 0.37
    open -a "Cloudflare WARP"
else
    sketchybar --set cfwarp icon.color=0xff4e4e4e
    sleep 0.37
    killall "Cloudflare WARP" &> /dev/null
    killall "CloudflareWARP" &> /dev/null
fi
