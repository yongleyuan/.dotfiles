#!/usr/bin/env bash

WECHATINFO=$(lsappinfo info -only StatusLabel `lsappinfo find LSDisplayName=微信`)
COUNT=$(echo $WECHATINFO | awk -F '\"' '{print $6}')
THRES=1

if [[ $COUNT -lt $THRES ]]; then
  $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
else
  $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
fi

