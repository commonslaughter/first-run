#!/bin/bash
## Michael Tatum
## Setup a local personal device after a clean Debian install

## viking mode for safety
set -e

date

## update the system to current packages
sudo apt-get update && sudo apt-get upgrade -y
sudo apt update && sudo apt upgrade -y

## setup yubikeys; https://support.yubico.com/support/solutions/articles/15000010964-enabling-the-yubico-ppa-on-ubuntu
## sudo add-apt-repository ppa:yubico/stable && sudo apt-get update
## sudo apt-get install -y yubikey-manager-qt

## generate a fresh set of SSH keys
## ssh-keygen

## install network tools
sudo apt-get install -y firefox
sudo apt-get install -y chromium-browser
sudo apt-get install -y filezilla
sudo apt-get install -y deluge
sudo apt-get install -y transmission
sudo apt-get install -y midori
## sudo apt-get install -y zenmap
sudo apt-get install -y net-tools
sudo apt-get install -y nmap
sudo apt-get install -y iptables
## sudo apt-get install -y iptables-services
sudo apt-get install -y remmina

## install system tools
sudo apt-get install -y gnome-disk-utility
sudo apt-get install -y usb-creator-gtk
sudo apt-get install -y tilix
sudo apt-get install -y xfburn
sudo apt-get install -y gparted
sudo apt-get install -y git

## install office tools
sudo apt-get install -y xarchiver
## sudo apt-get install -y 7zip
sudo apt-get install -y featherpad
sudo apt-get install -y gedit
sudo apt-get install -y libreoffice
sudo apt-get install -y geany

## install multimedia tools
sudo apt-get install -y redshift-gtk
## sudo apt-get install -y geoclue-2.0
sudo apt-get install -y vlc
sudo apt-get install -y rhythmbox
## sudo apt-get install -y shutter
sudo apt-get install -y gimp
sudo apt-get install -y cheese
sudo apt-get install -y openshot
sudo apt-get install -y obs-studio

## install container tools
## sudo apt-get install -y virtualbox
## sudo apt-get install -y snapd
## sudo apt-get install -y lxc

## install game tools
sudo apt-get install -y pychess
sudo apt-get install -y steam
sudo apt-get install -y lbreakout2

## install backup tools
sudo apt-get install -y luckybackup
## sudo apt-get install -y backupninja

## install security tools
sudo apt-get install -y keypassx
sudo apt-get install -y keypassxc
sudo apt-get install -y clamav clamav-daemon clamtk
sudo apt-get install -y bleachbit
sudo apt-get install -y lynis
sudo apt-get install -y rkhunter
sudo apt-get install -y gtkhash

## install management tools
## sudo apt-get install -y snmpd            ## for observium
## sudo apt-get install -y salt-minion      ## for saltstack
## sudo apt-get install -y salt-master      ## for saltstack
## sudo apt-get install -y chef
## sudo apt-get install -y ansible
## sudo apt-get install -y cockpit

date
echo
echo "It took $SECONDS seconds for this script to execute."

## final reboot as last action; enables newest kernel
## sudo reboot now

## EoF
