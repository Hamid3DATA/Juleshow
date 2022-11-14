Things to install

sudo apt install screen

sudo apt install unclutter



juleshow.sh


#!/bin/bash

export DISPLAY=:0
chromium-browser http://192.168.1.148 --window-size=1280,1024 --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic



cursor.sh


#!/bin/bash

export DISPLAY=:0
unclutter -idle 0.01



refreshpage.sh


#!/bin/bash

export DISPLAY=:0
xdotool key ctrl+F5



crontab -e


@reboot (. ~/.profile; /usr/bin/screen -dmS Juleshow ~/juleshow.sh)
@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)
0**** (. ~/.profile; /usr/bin/screen -dmS RefreshPage ~/refreshpage.sh)
