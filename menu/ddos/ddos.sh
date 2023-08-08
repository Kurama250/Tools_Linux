#!/bin/bash

print_kurama() {
    echo " \e[31m    /\ /\_   _ _ __ __ _ _ __ ___   __ _   \e[0m "
    echo " \e[33m   / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|\e[0m "
    echo " \e[32m  / __ \| |_| | | | (_| | | | | | | (_| |  \e[0m "
    echo " \e[36m  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  \e[0m "
    echo " \e[32m                                           \e[0m "
    echo " \e[32m          Created by Kurama250             \e[0m "
    echo " \e[34m    Github: https://github.com/Kurama250   \e[0m "
    echo " \e[35m       Tools for Check Info v1.1           \e[0m "
    echo ""
}

clear
print_kurama

read -p "Enter an IP address : " ip_address

if ! echo "$ip_address" | grep -Eq '^([0-9]{1,3}\.){3}[0-9]{1,3}$'; then
  echo "Invalid IP address."
  exit 1
fi

read -p "Enter a port : " port

if ! echo "$port" | grep -Eq '^[0-9]+$'; then
  echo "Invalid port number."
  exit 1
fi

read -p "Enter some method : " method

api_url="API_URL$ip_address&port=$port&time=60&method=$method"

curl -X POST -H "Content-Type: application/json" -d "{}" "$api_url"

echo "Ping request sent."

bash app.sh
