#!/bin/bash -
#===============================================================================
#
#          FILE: onepagewonder-demo-reset.sh
#
#         USAGE: ./onepagewonder-demo-reset.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 07/26/2015 18:12
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
cd ~/meteor/onepagewonder/demo
meteor deploy -D demo.idometeor.com
meteor deploy demo.idometeor.com

