#!/bin/bash
# Creator : Kurama
# Github : https://github.com/Kurama250

print_kurama() {
    echo -e " \e[31m    /\ /\_   _ _ __ __ _ _ __ ___   __ _   \e[0m "
    echo -e " \e[33m   / //_/ | | | '__/ _\` | '_ \` _ \ / _\`|\e[0m "
    echo -e " \e[32m  / __ \| |_| | | | (_| | | | | | | (_| |  \e[0m "
    echo -e " \e[36m  \/  \/ \__,_|_|  \__,_|_| |_| |_|\__,_|  \e[0m "
    echo -e " \e[32m                                           \e[0m "
    echo -e " \e[32m          Created by Kurama250             \e[0m "
    echo -e " \e[34m    Github: https://github.com/Kurama250   \e[0m "
    echo -e " \e[35m         Tools for Check IP v1.0           \e[0m "
    echo ""
}

run_menu() {
    clear
    print_kurama
    echo "Menu :"
    echo -e " \e[31m- IP -\e[0m "
    echo -e " \e[36m1. Ping\e[0m "
    echo -e " \e[36m2. Whois\e[0m "
    echo -e " \e[36m3. Tracker\e[0m "
    echo ""
    echo -e " \e[31m- Domain -\e[0m "
    echo -e " \e[32m4. Dns scan\e[0m "
    echo -e " \e[32m5. Subdomain\e[0m "
    echo -e " \e[32m6. Whois domain\e[0m "
    echo ""
    echo -e " \e[31m- Ddos -\e[0m "
    echo -e " \e[34m7. Attack\e[0m "
    echo ""
    echo -e " \e[33m8. Leave\e[0m "
    echo ""

    read -p "Choose an option [1-8]: " choice

    case $choice in
        1)
            sh menu/ip/ping.sh
            ;;
        2)
            sh menu/ip/whois.sh
            ;;
        3)
            sh menu/ip/track.sh
            ;;
        4)            
            sh menu/domain/dns.sh
            ;;
        5)            
            sh menu/domain/subdomain.sh
            ;;
        6)            
            sh menu/domain/whois.sh
            ;;
        7)            
            sh menu/ddos/ddos.sh
            ;;
        8)
            exit
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
}

run_menu
