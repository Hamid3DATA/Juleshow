#!/bin/bash

wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/juleshow.sh && sudo chmod +x juleshow.sh
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/cursor.sh && sudo chmod +x cursor.sh
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Juleshow ~/juleshow.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 15;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)'; } | crontab -u pi -
