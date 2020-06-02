#!/bin/bash

make
sudo make install
mkdir ~/.config/dwm
cp -r -p config/* ~/.config/dwm
