#!/bin/bash

apt update && apt upgrade -y
apt install dnsrecon whois curl git -y
git clone https://github.com/Kurama250/Tools_Linux.git
cd Tools_Linux
bash app.sh
