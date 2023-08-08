#!/bin/bash

print_kurama() {
    echo -e " \e[31m    /\ /\_   _ _ __ __ _ _ __ ___   __ _   \e[0m "
    echo -e " \e[33m   / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|\e[0m "
    echo -e " \e[32m  / __ \| |_| | | | (_| | | | | | | (_| |  \e[0m "
    echo -e " \e[36m  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  \e[0m "
    echo -e " \e[32m                                           \e[0m "
    echo -e " \e[32m          Created by Kurama250             \e[0m "
    echo -e " \e[34m    Github: https://github.com/Kurama250   \e[0m "
    echo -e " \e[35m        Tools for Check IP v1.0            \e[0m "
    echo ""
}

read -p "Enter an IP address : " ip_address

if [[ ! $ip_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Invalid IP address."
  exit 1
fi

ping -c 4 $ip_address

bash app.sh
