#!/bin/bash - 
#===============================================================================
#
#          FILE:  temp.sh
# 
#         USAGE:  ./temp.sh 
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
#       CREATED:  02/11/2011 10:22:24 PM EST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

domains=(algersoc@algersocial.com 
   baragaso@baragasocial.com 
   deltasoc@deltasocial.com 
   dickinso@dickinsonsocial.com 
   gogebics@gogebicsocial.com 
   houghton@houghtonsocial.com 
   ironsoci@ironsocial.com 
   keweenaw@keweenawsocial.com 
   lucesoci@lucesocial.com 
   menomine@menomineesocial.com 
   ontonago@ontonagonsocial.com 
   schoolcr@schoolcraftsocial.com)

data=(72d0d
    7da94
    54716
    bf622
    2da88
    4401a
    e100f
    54727
    86788
    51156
    dc986
    ec224
    92bd4)

for i in ${!domains[*]}
do
   ssh ${d[$i]} mkdir public_html/wp-content/backwpup-${data[$i]}-logs 
done
