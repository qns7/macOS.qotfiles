#!/bin/bash

sketchybar --add item date right \
           --set date script="$PLUGIN_DIR/date.sh"  \
                      click_script="$PLUGIN_DIR/click_date.sh" \
                      icon.width=113 \
                      icon.align=center \
                      icon.y_offset=0 \
                      background.color=0xffff9500 \
                      background.height=22 \
                      background.corner_radius=11 \
                      background.y_offset=0 \
                      update_freq=120 # safe? nach wake wars gereade noch die alte nummer - why? wäre es nach 120 sec nice? 11:36, 11.05.25, SUN ---> UPDATES PASSIEREN NUR FÜR DIE SACHEN IM SCRIPT!
                      # icon.width=91 \
                      # label.color=0xffc7c7c7 \
                      # label.width=22 \
