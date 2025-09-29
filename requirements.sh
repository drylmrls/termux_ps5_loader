#!/bin/bash
# This installs all the required applications and files

pkg install python
pkg install git
pkg install nmap
pkg install wget
git clone https://github.com/shahrilnet/remote_lua_loader.git
cd remote_lua_loader/payloads
wget https://github.com/etaHEN/etaHEN/releases/download/2.3B/etaHEN-2.3B.bin
cd ../..
wget https://github.com/drylmrls/termux_ps5_loader/raw/refs/heads/main/script.sh
chmod -R 700 *
