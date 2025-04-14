#!/bin/csh

# Need csh of some sort

# set environment variables
setenv PDK_ROOT /usr/local/share/pdk
setenv PDK sky130A


# Needed to add scripts to set PDK_ROOT so the xschemrc can add ${PWD} 
# If all users use same script to launch xschem all hierarchy references should work
# Need to remake all standard cells as /device seems to overwrite the xschem top scripts

# Launch xschem
xschem
