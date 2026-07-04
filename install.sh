#!/bin/bash

clear
echo "======================================="
echo "      CyberToolkit Installer v1.0"
echo "======================================="

echo "[*] Updating package lists..."
sudo apt update

echo "[*] Installing Kali packages..."

sudo apt install -y \
echo
echo "[*] Checking installed packages..."
echo

TOOLS=(
nmap
sqlmap
hydra
john
hashcat
wireshark
theharvester
whois
dnsutils
curl
git
python3
python3-pip
pipx
)

for pkg in "${TOOLS[@]}"
do
    if dpkg -s "$pkg" >/dev/null 2>&1; then
        echo "[OK] $pkg already installed"
    else
        echo "[INSTALL] $pkg"
        sudo apt install -y "$pkg"
    fi
done\
pipx

echo "[*] Installing Sherlock..."

if ! command -v sherlock >/dev/null 2>&1; then
    pipx install sherlock-project
fi

echo "[*] Creating directories..."

mkdir -p ~/CyberToolkit/{bin,lib,docs,reports,logs,config}

echo "[*] Making scripts executable..."

chmod +x ~/CyberToolkit/bin/*
chmod +x ~/CyberToolkit/lib/*.sh

echo
echo "======================================="
echo " Installation completed successfully!"
echo "======================================="

echo
echo "Installed tools:"
echo " - Sherlock"
echo " - theHarvester"
echo " - Nmap"
echo " - SQLMap"
echo " - Hydra"
echo " - John"
echo " - Hashcat"
echo " - Wireshark"
echo
echo "Run:"
echo
echo "    ~/CyberToolkit/bin/osint"
echo
