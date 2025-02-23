#!/bin/bash

STATUS=$(pgrep -x "Cloudflare WARP" && pgrep -x "CloudflareWARP")

if [ "$STATUS" = "" ]; then
    sketchybar --set cfwarp icon.color=0xffff9500
    open -a "Cloudflare WARP"
else
    sketchybar --set cfwarp icon.color=0xffc7c7c7
    killall "Cloudflare WARP" &> /dev/null
    killall "CloudflareWARP" &> /dev/null
fi
