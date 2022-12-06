#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
	brightnessctl g
}

function send_notification {
    	brightness=`get_brightness`
	bar=$(seq -s "|" $((($brightness / 12) + 1)) | sed 's/[0-9]//g')
    	# Send the notification
	dunstify -t 1000 -r 2593 -u normal "   $(($brightness / 24)) $bar"
}

case $1 in
    up)
	brightnessctl set +10%
	send_notification
	;;
    down)
	brightnessctl set 10%-
	send_notification
	;;
esac
