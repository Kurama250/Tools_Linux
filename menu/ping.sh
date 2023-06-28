#!/bin/bash

print_kurama() {
    echo "   /\ /\_   _ _ __ __ _ _ __ ___   __ _   "
    echo "  / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|"
    echo " / __ \| |_| | | | (_| | | | | | | (_| |  "
    echo " \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  "
    echo "                                          "
    echo "         Created by Kurama250             "
    echo "   Github: https://github.com/Kurama250   "
    echo "        Tools for Check IP v1.0           "
}

print_kurama
read -p "Enter an IP address : " ip_address

if [[ ! $ip_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Invalid IP address."
  exit 1
fi

ping -c 4 $ip_address

bash app.sh