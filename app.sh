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

run_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo "1. Ping"
    echo "2. Whois"
    echo "3. Tracker"
    echo "4. Install Package"
    echo "5. Leave"
    echo ""

    read -p "Choose an option [1-5]: " choice

    case $choice in
        1)
            sh menu/ping.sh
            ;;
        2)
            sh menu/whois.sh
            ;;
        3)
            sh menu/track.sh
            ;;
        4)            
            sh menu/package.sh
            ;;
        5)
            exit
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
}

run_menu
