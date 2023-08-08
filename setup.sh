#!/bin/bash

apt update && apt upgrade -y
apt install dnsrecon whois curl git -y
git clone https://github.com/Kurama250/Tools_kurama.git
cd Tools_kurama
bash app.sh