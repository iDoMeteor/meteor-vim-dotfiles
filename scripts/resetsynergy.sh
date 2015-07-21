#!/bin/bash - 
#===============================================================================
#
#          FILE: resetsynergy.sh
# 
#         USAGE: ./resetsynergy.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/21/2015 11:19
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

killall synergys
ssh ronin killall synergyc
synergys -c /home/j/.quicksynergy/synergy.conf &
ssh ronin synergyc 192.168.2.7 &
