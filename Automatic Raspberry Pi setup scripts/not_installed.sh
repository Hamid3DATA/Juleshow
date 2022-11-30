#!/bin/bash

sudo apt install screen -y

sudo apt install unclutter -y

wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/julshow.sh && sudo chmod +x julshow.sh
sleep 1
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/cursor.sh && sudo chmod +x cursor.sh
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Julshow ~/julshow.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 15;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)'; } | crontab -u pi -
