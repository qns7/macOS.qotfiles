# #!/bin/bash

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M')" \
                          icon.font.style="Medium" \
                          icon.color=0xffffffff
else
    sketchybar --set date icon="$(date +'%d.%m')" \
                          icon.font.style="Regular" \
                          icon.color=0xffc7c7c7
fi
sketchybar --set date label="$(date +':%u')"
