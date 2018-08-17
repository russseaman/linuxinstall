#!/bin/bash

#j33p's auto-setup script
declare -a toInstall=('git' 'xorg' 'i3' 'neofetch' 'task' 'curl' 'wget')

#sync mirrors
sudo xbps-install  -y -S
#update packages
sudo xbps-install -y -Su

for i in "${toInstall[@]}" 
do
	sudo xbps-install -y $i	

done	
sudo xbps-install -y -Su
