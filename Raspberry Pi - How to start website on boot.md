# Everything you need to do (In order)

<br />

## Things to install
```
sudo apt install screen
```
```
sudo apt install unclutter
```

<br />
<br />

## Files/Scripts you will need to have in your raspberry pi


You can either just create .sh files in your raspberry pi or just download them from the [Raspberry Pi Files](https://github.com/Hamid3DATA/Juleshow/tree/main/Raspberry%20Pi%20Files) folder to your raspberry pi.


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

<br />

## Make the files executable

```
sudo chmod +x juleshow.sh
```
```
sudo chmod +x cursor.sh
```

<br />

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
