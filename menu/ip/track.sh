#!/bin/bash

print_kurama() {
    echo " \e[31m    /\ /\_   _ _ __ __ _ _ __ ___   __ _   \e[0m "
    echo " \e[33m   / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|\e[0m "
    echo " \e[32m  / __ \| |_| | | | (_| | | | | | | (_| |  \e[0m "
    echo " \e[36m  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  \e[0m "
    echo " \e[32m                                           \e[0m "
    echo " \e[32m          Created by Kurama250             \e[0m "
    echo " \e[34m    Github: https://github.com/Kurama250   \e[0m "
    echo " \e[35m         Tools for Check IP v1.0           \e[0m "
    echo ""
}

search_track_info() {
   echo " \e[31mEnter an IP address :\e[0m "
    read ip_address
    response=$(curl -s "http://ip-api.com/json/$ip_address")
    echo "$response" > result/track.txt
    echo " \e[31mTracking information saved to 'result/track.txt'.\e[0m "
}

show_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo " \e[31m1. Finding Tracking Information\e[0m "
    echo " \e[31m2. Open track.txt\e[0m "
    echo " \e[34m3. Return Home Menu\e[0m "
    echo " \e[33m4. Leave\e[0m "
    echo " \e[35mEnter your choice :\e[0m "
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