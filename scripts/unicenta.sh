#!/bin/bash - 
#===============================================================================
#
#          FILE:  unicenta.sh
# 
#         USAGE:  ./unicenta.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Jason Edward White (JEW), vim@a-little-taste-of-j.com
#       COMPANY:  BlinkenVenture.com
#       VERSION:  1.0
#       CREATED:  11/06/11 11:43:34 EST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd ~/unicentaopos-2.80
sh start.sh
