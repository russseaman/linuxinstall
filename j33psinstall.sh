#!/bin/bash
#j33p's auto-setup script

#Packages to install
declare -a toInstall=('i3-gaps' 'i3blocks' 'i3status' 'i3lock'  'xorg' 'neofetch' 'task' 'curl' 'qutebrowser' 'wget' 'vim' 'alsa-utils'  'zsh' 'alsa'  'sxhkd' 'rofi' 'dmenu' 'feh' 'htop' 'ranger')

#File Dirs to make for ~/
declare -a mkDirs=('Documents' 'Downloads' 'Projects' 'SCHOOL')

#sync mirrors
sudo xbps-install -y -Su

#Program install loop
for i in "${toInstall[@]}"
do
	sudo xbps-install -S -y $i
done

#sync mirrors
sudo xbps-install -y -Su

#Make Dirs loop
cd ..		#Go up a directory level
for i in "${mkDirs[@]}"
do
	sudo mkdir $i
done

cd ~/SCHOOL
git clone https://github.com/russseaman/SCHOOL.git
cd ..

#clean up, after intial install delete the old install script/dir
sudo rm -rf v01dr1c3/

echo 'exec i3' >> .xinitrc

sudo xbps-install -y -Su
