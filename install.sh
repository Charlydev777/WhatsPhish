#!/bin/bash

sleep 0.5
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mActualizando TERMUX...'
yes|apt update && apt upgrade
yes|pkg install figlet
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mTermux Actualizado.'

clear
sleep 0.4
figlet Whats Pish 1.0

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mInstalando paquetes requeridos...'
sleep 0.3

if [[ $(command -v php) && $(command -v dropbear) && $(command -v ruby) ]]; then
   echo -e '\n\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mPaquetes requeridos ya instalados.'
else
   pkgs=(php dropbear ruby)
   for pkg in "${pkgs[@]}"; do
      type -p "$pkg" &>/dev/null || {
         echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mInstalando Paquetes'
         if [[ $(command -v pkg) ]]; then
	     pkg install "$pkg" -y
	 elif [[ $(command -v apt) ]]; then
	     sudo apt install "$pkg" -y
	 elif [[ $(command -v apt-get) ]]; then
	     sudo apt-get install "$pkg" -y
	 else
	     echo -e '\e[1;31mNo se pueden instalar los paquetes, Instala manualmente'
	 fi
      }
   done
fi

if [[ $(command -v ruby)]]; then
   gem install lolcat
else
   echo -e '\e[1;31mRuby no instalado'
fi

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mPaquetes instalados...'

sleep 0.5

bash run.sh

#==================================================
#           Created by: @CharlyDev777
#==================================================
