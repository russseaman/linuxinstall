#!/bin/bash

#j33p's auto-setup script

#Programs to install
declare -a toInstall=('git' 'xorg' 'neofetch' 'task' 'curl' 'wget' 'vim' 'tmux' 'st' 'wifish' 'neomutt' 'zsh' 'alsa' 'bspwm' 'sxhkd' 'qutebrowser' 'rofi' 'dmenu' 'xfce4-terminal')

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

sudo git clone https://github.com/termwiz/dotfiles-void

sudo xbps-install -y -Su
