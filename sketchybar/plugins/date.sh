# #!/bin/bash

if [ -f /tmp/show.clock ]; then
    sketchybar --set date icon="$(date +'%H:%M___:%u')"
else
    sketchybar --set date icon="$(date +'%d.%m.%y:%u')"
fi
