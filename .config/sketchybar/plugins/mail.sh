#!/usr/bin/env bash

MAILINFO=$(lsappinfo info -only StatusLabel `lsappinfo find LSDisplayName=Mail`)
COUNT=$(echo $MAILINFO | awk -F '\"' '{print $6}')
THRES=1

if [[ $COUNT -lt $THRES ]]; then
  $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
else
  $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
fi

