#!/bin/bash

export DISPLAY=:0
chromium-browser http://192.168.1.148 --window-size=1280,1024 --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic
