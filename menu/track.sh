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

search_track_info() {
    echo "Enter an IP address :"
    read ip_address
    response=$(curl -s "http://ip-api.com/json/$ip_address")
    echo "$response" > result/track.txt
    echo "Tracking information saved to 'result/track.txt'."
}

show_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo "1. Finding Tracking Information"
    echo "2. Open track.txt"
    echo "3. Return Home Menu"
    echo "4. Leave"
    echo "Enter your choice :"
    read choice

    case $choice in
        1) search_track_info ;;
        2) nano result/track.txt  ;;
        3) bash app.sh ;;
        4) exit ;;
        *) echo "Invalid choice. Try again." ;;
    esac
}

while true
do
    show_menu
    echo "Press any key to continue..."
    read -n 1
done