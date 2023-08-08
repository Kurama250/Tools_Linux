#!/bin/bash

print_kurama() {
    echo " \e[31m    /\ /\_   _ _ __ __ _ _ __ ___   __ _   \e[0m "
    echo " \e[33m   / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|\e[0m "
    echo " \e[32m  / __ \| |_| | | | (_| | | | | | | (_| |  \e[0m "
    echo " \e[36m  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  \e[0m "
    echo " \e[32m                                           \e[0m "
    echo " \e[32m          Created by Kurama250             \e[0m "
    echo " \e[34m    Github: https://github.com/Kurama250   \e[0m "
    echo " \e[35m        Tools for Check IP v1.0            \e[0m "
    echo ""
}

search_dns() {
    echo " \e[31mEnter a website URL :\e[0m "
    read website_url
    host $website_url > result/dns.txt
    echo " \e[31mDNS search result saved to 'result/dns.txt'.\e[0m "
}

show_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo " \e[31m1. Search DNS\e[0m "
    echo " \e[31m2. Open dns.txt\e[0m "
    echo " \e[34m3. Return Home Menu\e[0m "
    echo " \e[33m4. Leave\e[0m "
    echo " \e[35mEnter your choice:\e[0m "
    read choice

    case $choice in
        1) search_dns ;;
        2) nano result/dns.txt  ;;
        3) bash app.sh ;;
        4) exit ;;
        *) echo "Invalid choice. Try Again." ;;
    esac
}

while true
do
    show_menu
    echo "Press any key to continue..."
    read -n 1
done