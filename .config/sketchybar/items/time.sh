#!/usr/bin/env bash

$BAR_NAME --set time \
                icon.drawing=off \
                update_freq=1 \
                background.drawing=on \
                background.corner_radius=10 \
                background.color="0xff000000" \
                background.border_width=0 \
                background.height=48 \
                background.y_offset=10 \
                label.padding_left=20 \
                label.padding_right=15 \
                label.font.size=16 \
                label.y_offset=2 \
                padding_left=-25 \
                script="$PLUGIN_DIR/time.sh"

