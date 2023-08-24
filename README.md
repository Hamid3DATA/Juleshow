This is my school project for Christmas.

[!NOTE]
Some scripts were made for 1280x1024 (5:4 aspect ratio) monitor so changes will be needed accordingly

What I did was that i created a website using VSC(Visual Studio Code) and then i showcased it in our school hall using a raspberry pi that was connected to a 5:4 monitor. It automatically starts the webpage showcasing as soon as the raspberry pi turns on.

First things first you should download the website files from “[Website Files](https://github.com/Hamid3DATA/Juleshow/tree/main/Website%20Files)” folder and then start a local webserver.
To host this site locally using a raspberry pi you will need "Apache2". You can install it using

```
sudo apt install apache2
```

After you installed it you can go to ```/var/www/html/``` and replace the index file with website files you just downloaded. You can then access the site in your browser by using raspberry pi's IP address.


Now for your raspberry pi that will be connected to the monitor you can follow one out of these two instructions.

If you want to do everything manually follow the “[Raspberry Pi – How to start website on boot.md](https://github.com/Hamid3DATA/Juleshow/blob/main/Raspberry%20Pi%20-%20How%20to%20start%20website%20on%20boot.md)” file.

If you want everything to be done automatically follow the “[Automatic Raspberry Pi setup script.md](https://github.com/Hamid3DATA/Juleshow/blob/main/Automatic%20Raspberry%20Pi%20setup%20script.md)” file.
[!NOTE]

