#!/bin/bash

make
sudo make install
mkdir ~/.config/dwm
cp -r config/* ~/.config/dwm
