#!/bin/bash
# Script UdpCustom 2023
# =========================================

REPO='http://x2025.mdxmy.eu.org:8081/new'
BGreen='\e[1;32m'
NC='\e[0m'
cd

wget -q -O /usr/local/bin/usernew ${REPO}/vpn/udp-custom/ssh/usernew.sh
wget -q -O /usr/local/bin/trial ${REPO}/vpn/udp-custom/ssh/trial.sh


mkdir -p /etc/udp-custom
# install udp-custom
echo ""
wget -q -O /etc/udp-custom/udp-custom ${REPO}/vpn/udp-custom/udp-custom-linux-amd64
chmod +x /etc/udp-custom/udp-custom
clear

# install Config Default Udp
wget -q -O /etc/udp-custom/config.json ${REPO}/vpn/udp-custom/config.json
chmod 644 /etc/udp-custom/config.json

echo start service udp-custom
systemctl start udp-custom &>/dev/null

echo enable service udp-custom
systemctl enable udp-custom &>/dev/null

rm -rf go





