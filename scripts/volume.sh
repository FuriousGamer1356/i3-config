#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    bar=$(seq -s "|" $((($volume / 5) + 1)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -t 1000 -r 2593 -u normal "   $volume $bar"
}

case $1 in
    up)
	# Set the volume on (if it was muted)
	amixer -D pulse set Master on > /dev/null
	# Up the volume (+ 5%)
	amixer -D pulse sset Master 5%+ > /dev/null
	send_notification
	py3-cmd refresh volume_status
	;;
    down)
	amixer -D pulse set Master on > /dev/null
	amixer -D pulse sset Master 5%- > /dev/null
	send_notification
	py3-cmd refresh volume_status
	;;
    mute)
    	# Toggle mute
	amixer -D pulse set Master 1+ toggle > /dev/null
	if is_mute ; then
	    dunstify -i audio-volume-muted -t 1000 -r 2593 -u normal "   Mute"
	else
	    send_notification
	fi
	;;
esac
