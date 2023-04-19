#!/bin/bash

clear
sleep 0.5

data="$HOME/WhatsPhish"

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mActualizando WhatsPhish...'
sleep 0.4 
rm -rf ${data}
git clone https:github.com/Charlydev777/WhatsPhish ${data}

cd ${data}
chmod 777 *.sh

sleep 0.6
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;35mWhatsPhish Actualizado a su version mas reciente.'

#==================================================
#           Created by: @CharlyDev777
#==================================================