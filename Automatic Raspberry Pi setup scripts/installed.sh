#!/bin/bash

wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/juleshow.sh && sudo chmod +x juleshow.sh
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/cursor.sh && sudo chmod +x cursor.sh
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/Raspberry%20Pi%20Files/refreshpage.sh && sudo chmod +x refreshpage.sh
{ crontab -l -u pi; echo '@reboot (. ~/.profile; /usr/bin/screen -dmS Juleshow ~/juleshow.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '0 * * * * (. ~/.profile; /usr/bin/screen -dmS RereshPage ~/refreshpage.sh)'; } | crontab -u pi -
