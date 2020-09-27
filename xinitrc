#!/bin/bash

nitrogen --restore &
xcompmgr &
budgie-polkit-dialog &
dunst &

xset r rate 300 50
xinput set-prop 12 298 -1
setxkbmap -option caps:escape
xrdb ~/.Xresources

intfn(){
    if [ -z $(ping google.com -c 1 -W 0.5 |  awk '/64/ {print $1}') ]
    then
        echo Disconnected
    else
        echo Connected
    fi
}

while true; do
    datetime="$(date +" %a %d %b |  %R")"
    vol=" $(pulsemixer --get-volume | awk '{print $1}')"
    mem=" $(free -h  | awk '/Mem/ {print $3}')"
    cpu=" $(top -bn1 | awk '/Cpu/ {print $2}')"
    int=" $(intfn)"
    xsetroot -name "$int | $cpu | $mem | ${datetime} | ${vol}"
    sleep 0.9
done &

exec dwm
