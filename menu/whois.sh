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

search_whois() {
    echo "Enter an IP address :"
    read ip_address
    whois $ip_address > result/whois.txt
    echo "WHOIS search result saved to 'result/whois.txt'."
}

show_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo "1. WHOIS search"
    echo "2. Open whois.txt"
    echo "3. Return Home Menu"
    echo "4. Leave"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) search_whois ;;
        2) nano result/whois.txt  ;;
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