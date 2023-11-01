#!/bin/bash
## [ insert your name ]
## Setup a local personal server after a clean DEBIAN install

## viking mode for safety
## sudo set -e

## set the timezone
sudo timedatectl set-timezone America/Chicago

date

## set your hostname
## sudo hostnamectl set-hostname [ insert your name ]

## save your local subnet
## sudo nano /etc/hosts
## sudo nano /etc/motd

## update the system to current packages
sudo apt update -y
sudo apt upgrade -y

## install network tools
sudo apt install -y firefox
sudo apt install -y chromium-browser
sudo apt install -y filezilla
sudo apt install -y deluge
sudo apt install -y transmission
sudo apt install -y midori
## sudo apt install -y zenmap
sudo apt install -y net-tools
sudo apt install -y nmap
sudo apt install -y iptables
sudo apt install -y iptables-services
sudo apt install -y remmina
sudo apt install -y salt-minion
## sudo apt install -y salt-master
## sudo apt install -y chef
sudo apt install -y ansible
sudo apt install -y cockpit
sudo apt install -y net-tools
sudo apt install -y nmap
sudo apt install -y iptables
sudo apt install -y iptables-services
sudo apt install -y wget
sudo apt install -y snmpd
sudo apt install -y curl

## install system tools
sudo apt install -y htop
sudo apt install -y gnome-disk-utility
sudo apt install -y usb-creator-gtk
sudo apt install -y tilix
sudo apt install -y xfburn
sudo apt install -y gparted
sudo apt install -y git
sudo apt install -y htop
sudo apt install -y backupninja
sudo apt install -y lynis
sudo apt install -y rkhunter
sudo apt install -y tar
sudo apt install -y nano

## install office tools
sudo apt install -y xarchiver
sudo apt install -y 7zip
sudo apt install -y featherpad
sudo apt install -y gedit
sudo apt install -y libreoffice
sudo apt install -y geany

## install multimedia tools
sudo apt install -y redshift-gtk
## sudo apt install -y geoclue-2.0
sudo apt install -y vlc
sudo apt install -y rhythmbox
## sudo apt install -y shutter
sudo apt install -y gimp
sudo apt install -y cheese
sudo apt install -y openshot-qt
sudo apt install -y obs-studio

## install container tools
## sudo apt install -y virtualbox
sudo apt install -y snapd
## sudo apt install -y lxc
## sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## install game tools
sudo apt install -y pychess
sudo apt install -y steam
sudo apt install -y lbreakout2

## install backup tools
sudo apt install -y luckybackup
sudo apt install -y backupninja

## install security tools
sudo apt install -y keypassx
sudo apt install -y keypassxc
sudo apt install -y clamav clamav-daemon clamtk
sudo apt install -y bleachbit
sudo apt install -y lynis
sudo apt install -y rkhunter
sudo apt install -y gtkhash

## generate a fresh set of SSH keys
ssh-keygen

## generate keys for github
## ssh-keygen -t ed25519 -C "[ insert your name ]"

## First-Time Git Setup
## sudo git config --global user.name "[ insert your name ]"
## sudo git config --global user.email [ insert your name ]
## sudo git config --global core.editor nano

date
echo
echo "It took $SECONDS seconds for this script to execute."

## final reboot as last action; enables newer kernel
## sudo reboot now

## EoF
