#!/bin/bash

# Palette Warna Neon
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m'

# Fungsi Animasi Loading Sederhana
loading() {
    echo -ne "${YELLOW}[$1] ${WHITE}Sedang memproses...   ${NC}\r"
}

clear
echo -e "${CYAN}┌────────────────────────────────────────────────────────┐"
echo -e "${CYAN}│${PURPLE}  ███████╗██╗  ██╗███████╗██████╗ ██╗      ${CYAN}         │"
echo -e "${CYAN}│${PURPLE}  ██╔════╝██║  ██║██╔════╝██╔══██╗██║      ${CYAN}         │"
echo -e "${CYAN}│${PURPLE}  ███████╗███████║█████╗  ██████╔╝██║      ${CYAN}         │"
echo -e "${CYAN}│${PURPLE}  ╚════██║██╔══██║██╔══╝  ██╔══██╗██║      ${CYAN}         │"
echo -e "${CYAN}│${PURPLE}  ███████║██║  ██║███████╗██║  ██║███████╗ ${CYAN}         │"
echo -e "${CYAN}│${PURPLE}  ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝ ${CYAN}         │"
echo -e "${CYAN}├────────────────────────────────────────────────────────┤"
echo -e "${CYAN}│ ${NC}SETUP ENGINE: ${YELLOW}SHERLOCK-TERMUX ${CYAN}│ ${NC}BY: ${PURPLE}zeroXploit ${CYAN}    │"
echo -e "${CYAN}└────────────────────────────────────────────────────────┘${NC}"

echo -e "\n${PURPLE}[*] Mempersiapkan sistem zeroXploit...${NC}\n"

# 1. Update System
loading "01"
pkg update -y &> /dev/null && pkg upgrade -y &> /dev/null
echo -e "${GREEN}[✔] System Update: OK          ${NC}"

# 2. Install Packages
loading "02"
pkg install python nodejs -y &> /dev/null
echo -e "${GREEN}[✔] Core Packages: OK          ${NC}"

# 3. Install Python Libs
loading "03"
pip install colorama requests yt-dlp &> /dev/null
echo -e "${GREEN}[✔] Python Libraries: OK       ${NC}"

# 4. Install Node Libs
loading "04"
npm install axios chalk@4.1.2 gradient-string cli-table3 log-update &> /dev/null
echo -e "${GREEN}[✔] Node.js Modules: OK        ${NC}"

# 5. Permission & Cleanup
loading "05"
chmod +x * &> /dev/null
echo -e "${GREEN}[✔] Permissions: SET           ${NC}"

echo -e "\n${CYAN}────────────────────────────────────────────────────────"
echo -e "${WHITE}  Instalasi selesai tanpa hambatan."
echo -e "${WHITE}  Ketik ${GREEN}'python3 run.py'${WHITE} untuk masuk ke sistem."
echo -e "${CYAN}────────────────────────────────────────────────────────${NC}"
