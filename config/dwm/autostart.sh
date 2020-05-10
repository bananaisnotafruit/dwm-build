#!/bin/bash

nitrogen --restore &

while true; do
    datetime="$(date +"%a %R   %d %b")"
    vol="$(pulsemixer --get-volume | awk '{print $1}')"
    xsetroot -name "${datetime} ${vol}"
    sleep 1
done &
