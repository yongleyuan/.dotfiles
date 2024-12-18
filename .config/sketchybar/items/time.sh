#!/usr/bin/env bash

# $BAR_NAME --set time_notch \
#                 icon.drawing=off \
#                 update_freq=1 \
#                 background.drawing=on \
#                 background.corner_radius=10 \
#                 background.color="0xff000000" \
#                 background.border_width=0 \
#                 background.height=48 \
#                 background.y_offset=10 \
#                 label.padding_left=20 \
#                 padding_left=-30 \
#                 label.padding_right=10 \
#                 label.font.size=16 \
#                 script="$PLUGIN_DIR/time.sh" \
#                 click_script="$SCRIPT_DIR/click_dt.sh" \
#                 display=1

$BAR_NAME --set time \
                icon.drawing=off \
                update_freq=1 \
                background.drawing=on \
                background.corner_radius=10 \
                background.color="0x00000000" \
                background.border_width=0 \
                background.height=48 \
                background.y_offset=10 \
                label.padding_left=20 \
                label.padding_right=5 \
                label.font.size=18 \
                padding_left=-13 \
                script="$PLUGIN_DIR/time.sh" \
                # click_script="$SCRIPT_DIR/click_dt.sh" \
                # display=2,3,4

