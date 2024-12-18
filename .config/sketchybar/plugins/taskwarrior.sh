#!/usr/bin/env bash

pending_task_count=$(task +PENDING count)
started_task_count=$(task +ACTIVE count)
overdue_task_count=$(task +OVERDUE count)

if [[ $pending_task_count == 0 ]]; then
  $BAR_NAME --set $NAME label.drawing=off
else
  label="$pending_task_count"
  if [[ $started_task_count != 0 ]]; then
    label="*$started_task_count/$label"
  fi
  if [[ $overdue_task_count != 0 ]]; then
    label="!$overdue_task_count/$label"
  fi
  $BAR_NAME --set $NAME label="$label" label.drawing=on
fi

