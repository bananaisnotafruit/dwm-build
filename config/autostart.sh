#!/bin/bash

nitrogen --restore &

xset r rate 300 50
xinput set-prop 12 298 -1
while true; do
    datetime="$(date +"%R %a %d %b")"
    vol="$(pulsemixer --get-volume | awk '{print $1}')"
    xsetroot -name "${datetime} ${vol}"
    sleep 1
done &
