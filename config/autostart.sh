#!/bin/bash

nitrogen --restore &

xset r rate 300 50
xinput set-prop 12 298 -1
while true; do
    datetime="$(date +"%a %d %b %R")"
    vol="$(pulsemixer --get-volume | awk '{print $1}')"
    xsetroot -name "${datetime} Vol:${vol}"
    sleep 1
done &
