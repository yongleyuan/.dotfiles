#!/usr/bin/env bash
  
DEVICES="$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].device_connected[] | select ( .[] | .device_minorType == "Headphones")' | jq '.[]')"
if [ "$DEVICES" = "" ]; then
  $BAR_NAME --set $NAME drawing=off
else
  $BAR_NAME --set $NAME drawing=on
fi

