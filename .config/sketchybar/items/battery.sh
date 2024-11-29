#!/usr/bin/env bash

$BAR_NAME --subscribe battery system_woke power_source_change \
          --set battery \
                icon.color="0xff$SAPPHIRE" \
                update_freq=120 \
                script="$PLUGIN_DIR/battery.sh"

