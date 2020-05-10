dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.


Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).
    `make`
    `sudo make clean install`


The contents of the config folder are supposed to be in `.config/dwm/`
    this can be done with: 
    `cp config/* ~/.config/dwm/`
