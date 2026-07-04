#!/bin/bash

echo "==============================="
echo " Updating CyberToolkit"
echo "==============================="

sudo apt update
sudo apt upgrade -y

pipx upgrade sherlock-project

echo
echo "CyberToolkit updated."
