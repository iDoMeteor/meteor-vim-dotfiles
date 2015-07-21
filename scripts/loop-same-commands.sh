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
#        AUTHOR:  Jason Edward White (JEW) vim@a-little-taste-of-j.com
#       COMPANY:  BlinkenVenture.com
#       VERSION:  1.0
#       CREATED:  02/11/2011 10:22:24 PM EST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

domain=(
    
    ) 
user=(

    ) 
pw=(

   ) 

for i in ${!domain[*]}
do
    mkdir ${domain[$i]}
    cd ${domain[$i]}
    ssh ${user[$i]}@cpanel64.gzo.com --password=${pw[$i]}  rm back*.tar.gz
    ssh ${user[$i]}@cpanel64.gzo.com --password=${pw[$i]}  mysqldump -u ${user[$i]} --password=${pw[$i]} --all-databases >> ${domain[$i]}.sql
    scp -r ${user[$i]}@cpanel64.gzo.com:dumps ${user[$i]}@cpanel64.gzo.com:_public_html ${user[$i]}@cpanel64.gzo.com:public_html ${user[$i]}@cpanel64.gzo.com:scripts ${user[$i]}@cpanel64.gzo.com:CVS ${user[$i]}@cpanel64.gzo.com:*.sql ${user[$i]}@cpanel64.gzo.com:*.tar.gz . 
    cd ..
done

