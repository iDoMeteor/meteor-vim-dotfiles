#!/bin/bash - 
#===============================================================================
#
#          FILE: gvfs-reset.sh
# 
#         USAGE: ./gvfs-reset.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/03/2015 09:10
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

kill gvfsd-metadata
rm -rf ~/.local/share/gvfs-metadata
sudo chmod a-x /usr/bin/gdbus
