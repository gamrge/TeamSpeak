#!/bin/sh

#######################################
# Bash script to install an TeamSpeak 3 Server.
#By GAMRGE


#######################################

#COLORS
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

# Update packages and Upgrade system
echo -e "$Cyan \n Updating System.. $Color_Off"
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade

## Install TeamSpeak
echo -e "$Cyan \n Installing TeamSpeak Server Now $Color_Off"
sudo wget https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2

echo -e "$Cyan \n Extracting file TeamSpeak Server $Color_Off"
sudo tar xvfj teamspeak3-server_linux_amd64-3.12.1.tar.bz2

echo -e "$Cyan \n Login file TeamSpeak Server $Color_Off"
sudo cd teamspeak3-server_linux_amd64

echo -e "$Cyan \n Installing license $Color_Off"
sudo touch .ts3server_license_accepted

echo -e "$Cyan \n Starting Server $Color_Off"
sudo ./ts3server_startscript.sh start

# End Script
echo -e "$Cyan \n 
_________________________________
	|	|	|	|	|	|	|	|			
	|	|	|	|	|	|	|	|			
	|	|	|	|	|	|	|	|			
	|	|	|	|	|	|		||			
	|	End Script By GAMRGE	||		
	|	|	|	|	|	|		||			
	|	|	|	|	|	|	|	|			
	|	|	|	|	|	|	|	|			
	|	|	|	|	|	|	|	|			
_________________________________	
	$Color_Off"