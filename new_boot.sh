sudo apt install vlc

filename=/home/pi/launcher.sh
if [ ! -f $filename ]
then
    touch $filename
fi

mkdir -p /home/pi/video/

cp eyes.mp4 /home/pi/video/eyes.mp4

printf "#!/bin/bash
sleep 1
cvlc -f -L --no-video-title-show /home/pi/video/eyes.mp4" > $filename


filenameA=/etc/xdg/lxsession/LXDE-pi/autostart
if [ ! -f $filenameA ]
then
    touch $filenameA
fi

printf "@bash /home/pi/launcher.sh" > $filenameA 

