#!/bin/bash

# Dieses Programm dient zur Installation aller zur korrekten Funktion des Botes
# notwendigen Programme

echo "Welcome to Bot installer ! \n" 

# Desktop surface for ts3Client
echo "#1 Install X-Display  \n"
echo "[          ] update Dist. \n"
sudo apt-get update
echo "[..        ] upgrade Dist.  \n"

sudo apt-get upgrade
echo "[....      ] Loading xvfb Desktop \n"
echo "[......    ] User and Password must been setted \n"
sudo apt-get install xvfb
echo "[..........] Remote Desktop started \n"
echo "[..........] #1 completed ! \n"



# Audiodriver 
echo "#2 Install ALSA audio Driver   \n"
echo "[          ] load ALSA \n"
sudo apt-get install libasound2 alsa-utils alsa-oss
echo "[.....     ] load pulseaudio and pavucontrol for audio redirect \n"
sudo apt-get install pulseaudio pavucontrol zenity audacious
echo "[..........] installed \n"
echo "[..........] #2 completed ! \n"


# installer TS3 Client
echo "#3 Install Ts3 Client   \n"
echo "[          ] load Ts3Client \n"
sudo apt-get install wget 
wget http://dl.4players.de/ts/releases/3.0.16/TeamSpeak3-Client-linux_x86-3.0.16.run
chmod 777 TeamSpeak3-Client-linux_x86-3.0.16.run
echo "[...       ] confirm Installation !? \n"
sudo ./TeamSpeak3-Client-linux_x86-3.0.16.run
echo "[......    ] Ts3 Client sucessfully installed  \n"
sudo apt-get install psmisc twm unzip xterm
cd TeamSpeak3-Client-linux_x86
echo "[........  ] Ts3 Soundboard by Kampfrausch install \n"
wget http://www.kampfrausch.de/ts3/soundboard-0.9.9.9k-linux-x86.ts3_plugin
mv soundboard-0.9.9.9k-linux-x86.ts3_plugin soundboard-0.9.9.9k-linux-x86.zip
unzip soundboard-0.9.9.9k-linux-x86.zip -x package.ini
echo "[..........] Ts3 Soundboard by Kampfrausch installed \n"
echo "[..........] #3 completed ! \n"

