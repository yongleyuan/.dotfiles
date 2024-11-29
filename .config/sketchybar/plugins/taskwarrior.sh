#!/usr/bin/env bash

pending_task_count=$(task +PENDING count)
overdue_task_count=$(task +OVERDUE count)

if [[ $pending_task_count == 0 ]]; then
  $BAR_NAME --set $NAME label.drawing=off
else
  if [[ $overdue_task_count == 0 ]]; then
    label="$pending_task_count"
  else
    label="!$overdue_task_count/$pending_task_count"
  fi

  $BAR_NAME --set $NAME label="$label" label.drawing=on
fi

