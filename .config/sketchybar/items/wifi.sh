#!/usr/bin/env bash

$BAR_NAME --subscribe wifi wifi_change \
          --set wifi \
                icon.color="0xff$TEAL" \
                icon.font.size=20 \
                script="$PLUGIN_DIR/wifi.sh" \
                update_freq=30

