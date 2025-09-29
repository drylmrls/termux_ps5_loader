#!/bin/bash
 
cd /data/data/com.termux/files/home/remote_lua_loader/payloads                                                  
# Prompt only for the last octet of the IP address
read -p "Enter the last octet of the IP address (X in 192.168.1.X): " LAST_OCTET
 
# Construct the full IP address
IP_ADDRESS="192.168.1.$LAST_OCTET"
 
echo "Sending lapse.lua to $IP_ADDRESS..."
python send_lua.py "$IP_ADDRESS" 9026 lapse.lua
 
sleep 2
 
echo "Sending elf_loader.lua to $IP_ADDRESS..."
python send_lua.py "$IP_ADDRESS" 9026 elf_loader.lua    
sleep 3
 
echo "Sending etaHEN-2.3B.bin..."
nc -w 1 "$IP_ADDRESS" 9021 < etaHEN-2.3B.bin
 
echo "Done."
 
read -p "Press Enter to exit."
