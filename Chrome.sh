#!/usr/bin

# Colors
red='\e[1;31m'
default='\e[0m'
yellow='\e[0;33m'
orange='\e[38;5;166m'
green='\033[92m'

# Location
path=$(pwd)

# Check root 
if [ "$(id -u)" != "0" ] > /dev/null 2>&1; then
echo -e '\n$red[x] Este script necesita permisos root.' 1>&2
exit
fi

# Banner 
clear
sleep 2

echo -e "$red  ██▀███   ██▓ ██▓███   ███▄    █ ▓█████▄▄▄█████▓ █     █░ ▒█████   ██▀███   ██ ▄█▀ "
echo -e "$red ▓██ ▒ ██▒▓██▒▓██░  ██▒ ██ ▀█   █ ▓█   ▀▓  ██▒ ▓▒▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒ ██▄█▒  "
echo -e "$red ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▓██  ▀█ ██▒▒███  ▒ ▓██░ ▒░▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒▓███▄░  "
echo -e "$red ▒██▀▀█▄  ░██░▒██▄█▓▒ ▒▓██▒  ▐▌██▒▒▓█  ▄░ ▓██▓ ░ ░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ▓██ █▄  "
echo -e "$red ░██▓ ▒██▒░██░▒██▒ ░  ░▒██░   ▓██░░▒████▒ ▒██▒ ░ ░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒▒██▒ █▄ "
echo -e "$red ░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒ ░░   ░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░▒ ▒▒ ▓▒ "
echo -e "$red   ░▒ ░ ▒░ ▒ ░░▒ ░     ░ ░░   ░ ▒░ ░ ░  ░   ░      ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░░ ░▒ ▒░ "
echo -e "$red   ░░   ░  ▒ ░░░          ░   ░ ░    ░    ░        ░   ░  ░ ░ ░ ▒    ░░   ░ ░ ░░ ░  "
echo -e "$red    ░      ░                    ░    ░  ░            ░        ░ ░     ░     ░  ░    "

# Check if there is an internet connection
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" == 0 ]]; then
echo ""
echo -e "$green[✔][Internet Connection]............[ OK ]"
sleep 1.5
else
echo ""
echo -e $red"[!][Internet Connection].........[ NOT FOUND ]"
echo ""
exit
fi

# Check dependencies
echo -e $yellow
echo -n [*] Checando dependencias...= ;
sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
echo ""

# Check if xterm exists
which xterm > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo ""
echo -e "$green[✔][Xterm]..........................[ OK ]"
sleep 1.5
else
echo ""
echo -e "$red[x][Xterm].......................[ NOT FOUND ]"
sleep 1.5
echo -e "$yellow[!][Installing Xterm...]"
sudo apt-get install -y xterm > /dev/null
fi

xterm -T "RIP-Network Terminal" -geometry 100x30 -e "apt upgrade"
xterm -T "RIP-Network Terminal" -geometry 226x52 -e "apt upgrade"
xterm -T "RIP-Network Terminal" -geometry 226x52 -e "apt install wget"
xterm -T "RIP-Network Terminal" -geometry 226x52 -e "apt-get install -f"
xterm -T "RIP-Network Terminal" -geometry 226x52 -e "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
xterm -T "RIP-Network Terminal" -geometry 226x52 -e "dpkg -i google-chrome-stable_current_amd64.deb"
fi

sleep 2
echo -e $green
echo -e "╔───────────────────────────╗"
echo -e "|[✔] Instalacion completada ,    |"
echo -e "┖───────────────────────────┙"
echo -e "Escriba en la terminal (google-chrome)"
;;
esac
exit
