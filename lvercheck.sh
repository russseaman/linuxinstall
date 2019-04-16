#!/bin/bash
distro=$(lsb_release -si)
version=$(lsb_release -sr)


case $distro in
   "Void")
        echo "Void Linux Detected"
        pkmgr="xbps-install"
        ;;
   "Ubuntu")
        echo "Ubuntu Linux Detected"
        case $version in
            16.04)
                echo "Ubuntu" = "16.04"
                pkmgr="apt-get"
                echo "Package manager = $pkmgr"
                ;;
            18.04)
                echo "Ubuntu = 18.04"
                pkmgr="apt"
                echo "Package manager = $pkmgr"
                ;;
        esac
esac
