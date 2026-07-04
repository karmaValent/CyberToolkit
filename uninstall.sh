#!/bin/bash

clear
echo "======================================="
echo "     CyberToolkit Uninstaller"
echo "======================================="

read -p "Remove CyberToolkit from this computer? (y/N): " ans

if [[ "$ans" != "y" && "$ans" != "Y" ]]; then
    echo "Cancelled."
    exit 0
fi

echo
echo "[*] Removing CyberToolkit..."

rm -rf ~/CyberToolkit

echo
echo "[OK] CyberToolkit removed."

echo
echo "Installed packages were NOT removed."
echo "Only the CyberToolkit folder was deleted."
