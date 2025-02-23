#!/bin/bash

STATUS=$(pgrep -x "Cloudflare WARP" && pgrep -x "CloudflareWARP")

if [ "$STATUS" = "" ]; then
    sketchybar --set cfwarp icon.color=0xffc7c7c7
    open -a "Cloudflare WARP"
else
    sketchybar --set cfwarp icon.color=0xff4e4e4e
    killall "Cloudflare WARP" &> /dev/null
    killall "CloudflareWARP" &> /dev/null
fi
