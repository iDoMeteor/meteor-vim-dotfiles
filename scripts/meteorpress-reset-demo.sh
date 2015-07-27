#!/bin/bash -
#===============================================================================
#
#          FILE: reset-meteorpress-demo.sh
#
#         USAGE: ./reset-meteorpress-demo.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: @iDoMeteor
#  ORGANIZATION:
#       CREATED: 07/26/2015 18:11
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd ~/meteor/meteorpress/demo
meteor deploy -D demo.meteorpress.org
meteor deploy demo.meteorpress.org

CMD=`meteor mongo -U demo.meteorpress.org | tail -1 | sed 's_mongodb://\([a-z0-9\-]*\):\([a-f0-9\-]*\)@\(.*\)/\(.*\)_mongorestore -u \1 -p \2 -h \3 -d \4_'`
$CMD ~/meteor/meteorpress/archive/demo-dump/meteor
$CMD=
