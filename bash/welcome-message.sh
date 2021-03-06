#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title="Overlord"
hostname=$(hostname)
weekday=$(date +%u)
date=$(date '+%I:%M %p')
###############
# Main        #
###############
cat <<EOF

cowsay "Welcome to planet $hostname, "$title $USER!""

EOF
if [ "$weekday" = "6" ] || ["$weekday" = "7"]
then
    echo "It is $date on weekend."
else
    echo "It is $date on weekday."
