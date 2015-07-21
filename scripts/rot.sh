#!/bin/bash - 
#===============================================================================
#
#          FILE: rot.sh
# 
#         USAGE: ./rot.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/29/2014 20:10
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

#rotate screen
xrandr --output eDP1 --rotate $1

#rotate touch input
if [ "$1" = "inverted" ]; then
    xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
else
    xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1 
fi
