#!/bin/bash
#Shell Script - Version 1 (@GaziPy)
#Es wird folgendes installiert:
#Samba, NodeJS, Git, MongoDB, Rpio (fuer SPI)
#Ausfuehrbar insbesondere fuer Raspberry Pi 3 - ARMv7.
#Fuer später:
# http://www.ralphharrer.at/blog/node-js-und-mongodb-am-raspberry-pi
#
#Erster Schritt: Update des Systems
sudo apt update
sudo apt full-upgrade
#
#Naechster Schritt: Installation von Git.
sudo apt-get -y install git
# Nachster Schritt: Remotedesktop ermoeglichen mit Samba
sudo apt install -y tightvnserver
sudo apt install -y xrdp
sudo apt install -y samba
#
#Naechster Schritt: Installation von Node.js.
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install nodejs
#
#Naechster Schritt: Installation von MongoDB 
sudo apt-get install mongodb-server
# To Do: hier muessen noch die Ordner richtig eingerichter werden
#
# Naechster Schritt: Installtion von RPIO (fuer SPI)
npm install rpio
#
# https://www.npmjs.com/package/rpio
#cat >/etc/udev/rules.d/20-gpiomem.rules <<EOF
#SUBSYSTEM=="bcm2835-gpiomem", KERNEL=="gpiomem", GROUP="gpio", MODE="0660"
#EOF
#
# Naechster Schritt: Installation von Visual Studio Code
#get http://node-arm.herokuapp.com/node_latest_armhf.deb
#sudo dpkg -i node_latest_armhf.deb
#sudo apt-get install libx11-dev
#git clone https://github.com/microsoft/vscode
cd vscode
./scripts/npm.sh install --arch=armhf
# zum Starten: " ./scripts/code.sh " eintippen (selben Ordner) 
