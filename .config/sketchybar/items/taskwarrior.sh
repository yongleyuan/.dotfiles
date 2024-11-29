#!/usr/bin/env bash

$BAR_NAME --set taskwarrior \
                script="$PLUGIN_DIR/taskwarrior.sh" \
                update_freq=30 \
                icon="" \
                icon.color="0xff$MAROON"

