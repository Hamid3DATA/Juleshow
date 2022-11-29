```
#!/bin/bash

wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/juleshow.sh && chmod +x juleshow.sh
sleep 5
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/cursor.sh && chmod +x cursor.sh
sleep 5
wget https://raw.githubusercontent.com/Hamid3DATA/Juleshow/main/refreshpage.sh && chmod +x refreshpage.sh
sleep 5
{ crontab -l -u pi; echo '@reboot (. ~/.profile; /usr/bin/screen -dmS Juleshow ~/juleshow.sh)'; } | crontab -u pi -
sleep 2
{ crontab -l -u pi; echo '@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)'; } | crontab -u pi -
sleep 2
{ crontab -l -u pi; echo '0 * * * * (. ~/.profile; /usr/bin/screen -dmS RereshPage ~/refreshpage.sh)'; } | crontab -u pi -
```
