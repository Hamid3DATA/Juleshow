# Everything you need to do



## Things to install
```
sudo apt install screen
```
```
sudo apt install unclutter
```
```
sudo apt install xdotool
```



## Files/Scripts in raspberry pi


### juleshow.sh

```
#!/bin/bash

export DISPLAY=:0
chromium-browser http://192.168.1.148 --window-size=1280,1024 --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic
```


### cursor.sh

```
#!/bin/bash

export DISPLAY=:0
unclutter -idle 0.01
```


### refreshpage.sh

```
#!/bin/bash

export DISPLAY=:0
xdotool key ctrl+F5
```



## Make the files executable

```
sudo chmod +x juleshow.sh
```
```
sudo chmod +x cursor.sh
```
```
sudo chmod +x refreshpage.sh
```


## Crontab


### To open crontab
```
crontab -e
```


### In crontab
```
@reboot (. ~/.profile; /usr/bin/screen -dmS Juleshow ~/juleshow.sh)
```
```
@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS Cursor ~/cursor.sh)
```
```
0 * * * * (. ~/.profile; /usr/bin/screen -dmS RefreshPage ~/refreshpage.sh)
```
