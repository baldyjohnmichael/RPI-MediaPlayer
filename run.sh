#!/bin/bash
OIFS="$IFS"
IFS=$'\n'

echo "starting"
sleep 1
while true
do			# in removable drive, find a file with a file extension from below

        for file in `find /media/pi -type f \( -iname \*.avi  -o -iname \*.mp4 -o -iname \*.mov -o -iname \*.mp3 -o -iname \*.wav \)`
                do
                        echo "$file"
			# use -o local for 3.5mm aux, replace with --adev hdmi for audio over hdmi
			 /usr/bin/omxplayer -o local  --aspect-mode stretch --threshold 5 --loop --no-osd $file
                done
        echo "Completed cycle"
        sleep 15
done
