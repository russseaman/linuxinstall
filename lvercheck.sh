#!/bin/bash
distro=$(lsb_release -si)
version=$(lsb_release -sr)

case $distro in
   "VoidLinux")
        echo "Void Linux Detected"
        pkmgr="xbps-install"
	update="$pkmgr -S"
	upgrade="$pkmgr -u"
        ;;
   "Ubuntu")
        echo "Ubuntu Linux Detected"
        case $version in
            16.04)
                echo "Ubuntu" = "16.04"
                pkmgr="apt-get"
		update="$pkmgr update"
		upgrade="$pkmgr upgrade"
                ;;
            18.04)
                echo "Ubuntu = 18.04"
                pkmgr="apt"
		update="$pkmgr update"
		upgrade="$pkmgr upgrade"
                ;;
        esac
esac

echo "Package manager = $pkmgr"
sudo $update
sudo $upgrade
