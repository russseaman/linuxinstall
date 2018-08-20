#!/bin/bash

#j33p's auto-setup script

#Programs to install
declare -a toInstall=('git' 'xorg' 'i3-gaps' 'neofetch' 'task' 'curl' 'wget' 'vim' 'tmux' 'st' 'wifish' 'neomutt' 'zsh' 'i3blocks' 'alsa')

#File Dirs to make for home
declare -a mkDirs=('Documents' 'Downloads' 'Pictures' 'Music 'Movies')

#sync mirrors
sudo xbps-install  -y -S
#update packages
sudo xbps-install -y -Su

#Program install loop
for i in "${toInstall[@]}" 
do
	sudo xbps-install -y $i	
done	

#Make Dirs loop
cd ..		#Go up a directory level
for i in "${mkDirs[@]}"
do
	sudo mkdir $i
done

#clean up, after intial install delete the old install script/dir
sudo rm -rf v01dr1c3/

sudo xbps-install -y -Su
