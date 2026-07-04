#!/bin/bash

check_tool() {
    if command -v "$1" >/dev/null 2>&1; then
        printf "[OK]   %-15s\n" "$1"
    else
        printf "[FAIL] %-15s\n" "$1"
    fi
}

run_checks() {
    echo ""
    echo "===== Installed Tools ====="
    check_tool sherlock
    check_tool theHarvester
    check_tool whois
    check_tool dig
    check_tool curl
    check_tool nmap
    check_tool sqlmap
    check_tool hydra
    check_tool john
    check_tool hashcat
    check_tool wireshark
    echo "==========================="
}
