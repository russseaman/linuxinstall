#!/bin/bash

#j33p's auto-setup script

#Programs to install
declare -a toInstall=('git' 'i3-gaps' 'i3blocks' 'i3status' 'i3lock' 'zsh' 'xorg' 'neofetch' 'task' 'curl' 'wget' 'vim' 'tmux' 'alsa-utils' 'wifish' 'neomutt' 'zsh' 'alsa' 'bspwm' 'sxhkd' 'rofi' 'dmenu' 'feh' 'htop' 'ranger')

#File Dirs to make for home
declare -a mkDirs=('Documents' 'Downloads' 'Pictures' 'Music' 'Movies')

#sync mirrors
sudo xbps-install  -y -Su
#update packages
sudo xbps-install -y -Suv

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

echo 'exec i3' >> .xinitrc

sudo xbps-install -y -Suv
