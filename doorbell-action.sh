#!/bin/bash

latestfile=$(</home/pi/currjpg)
convert $latestfile -resize 40% /tmp/MotionEye/doorbell.jpg
curl -s \
	-F "token=ajgh2ycfwh9wk9uf85t5vvny35ajh8" \
	-F "user=g2fw8jte2ptdncjjchc32nboqs2yaq" \
	-F "title=Door Bell" \
	-F "message=Someone rang the doorbell, and here's a picture" \
	-F "attachment=@/tmp/MotionEye/doorbell.jpg" \
	https://api.pushover.net/1/messages.json	
sleep 15
