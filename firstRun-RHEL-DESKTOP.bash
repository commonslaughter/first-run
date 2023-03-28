#!/bin/bash
## [ insert your name ]
## Setup a local personal server after a clean RHEL install

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
sudo yum update -y  ## sudo dnf upgrade -y
sudo yum install epel-release

## install network tools
sudo yum install -y firefox
sudo yum install -y chromium-browser
sudo yum install -y filezilla
sudo yum install -y deluge
sudo yum install -y transmission
sudo yum install -y midori
## sudo yum install -y zenmap
sudo yum install -y net-tools
sudo yum install -y nmap
sudo yum install -y iptables
sudo yum install -y iptables-services
sudo yum install -y remmina
sudo yum install -y salt-minion
## sudo yum install -y salt-master
## sudo yum install -y chef
sudo yum install -y ansible
sudo yum install -y cockpit
sudo yum install -y net-tools
sudo yum install -y nmap
sudo yum install -y iptables
sudo yum install -y iptables-services
sudo yum install -y wget
sudo yum install -y snmpd
sudo yum install -y curl

## install system tools
sudo yum install -y htop
sudo yum install -y gnome-disk-utility
sudo yum install -y usb-creator-gtk
sudo yum install -y tilix
sudo yum install -y xfburn
sudo yum install -y gparted
sudo yum install -y git
sudo yum install -y htop
sudo yum install -y backupninja
sudo yum install -y lynis
sudo yum install -y rkhunter
sudo yum install -y tar
sudo yum install -y nano

## install office tools
sudo yum install -y xarchiver
sudo yum install -y 7zip
sudo yum install -y featherpad
sudo yum install -y gedit
sudo yum install -y libreoffice
sudo yum install -y geany

## install multimedia tools
sudo yum install -y redshift-gtk
## sudo yum install -y geoclue-2.0
sudo yum install -y vlc
sudo yum install -y rhythmbox
## sudo yum install -y shutter
sudo yum install -y gimp
sudo yum install -y cheese
sudo yum install -y openshot-qt
sudo yum install -y obs-studio

## install container tools
## sudo yum install -y virtualbox
sudo yum install -y snapd
## sudo yum install -y lxc
## sudo yum install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## install game tools
sudo yum install -y pychess
sudo yum install -y steam
sudo yum install -y lbreakout2

## install backup tools
sudo yum install -y luckybackup
sudo yum install -y backupninja

## install security tools
sudo yum install -y keypassx
sudo yum install -y keypassxc
sudo yum install -y clamav clamav-daemon clamtk
sudo yum install -y bleachbit
sudo yum install -y lynis
sudo yum install -y rkhunter
sudo yum install -y gtkhash

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
