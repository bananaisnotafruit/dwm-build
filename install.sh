#!/bin/bash

make
sudo make install
mkdir -p ~/.config/dwm
cp -r -p config/* ~/.config/dwm
