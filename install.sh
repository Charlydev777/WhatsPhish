sleep 0.5
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mActualizando TERMUX...'
yes|apt update && apt upgrade
pkg install figlet -y
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mTermux Actualizado.'

sleep 0.4
figlet Whats Pish 1.0

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mInstalando paquetes requeridos...'
sleep 0.3


pkg install php
pkg install dropbear
pkg install ruby
gem install lolcat

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mPaquetes instalados...'
clear
sleep 0.5

bash run.sh