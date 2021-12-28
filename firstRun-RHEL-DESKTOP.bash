#!/bin/bash
## 
## Setup a local personal device after a clean RHEL install

## viking mode for safety
set -e

date

## update the system to current packages
sudo yum update && sudo yum upgrade -y

## generate a fresh set of SSH keys
## ssh-keygen

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
## sudo yum install -y iptables-services
sudo yum install -y remmina

## install system tools
sudo yum install -y htop
sudo yum install -y gnome-disk-utility
sudo yum install -y usb-creator-gtk
sudo yum install -y tilix
sudo yum install -y xfburn
sudo yum install -y gparted
sudo yum install -y git

## install office tools
sudo yum install -y xarchiver
## sudo yum install -y 7zip
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
sudo yum install -y openshot
sudo yum install -y obs-studio

## install container tools
## sudo yum install -y virtualbox
## sudo yum install -y snapd
## sudo yum install -y lxc

## install game tools
sudo yum install -y pychess
sudo yum install -y steam
sudo yum install -y lbreakout2

## install backup tools
sudo yum install -y luckybackup
## sudo yum install -y backupninja

## install security tools
sudo yum install -y keypassx
sudo yum install -y keypassxc
sudo yum install -y clamav clamav-daemon clamtk
sudo yum install -y bleachbit
sudo yum install -y lynis
sudo yum install -y rkhunter
sudo yum install -y gtkhash

## install management tools
## sudo yum install -y snmpd            ## for observium
## sudo yum install -y salt-minion      ## for saltstack
## sudo yum install -y salt-master      ## for saltstack
## sudo yum install -y chef
## sudo yum install -y ansible
## sudo yum install -y cockpit

date
echo
echo "It took $SECONDS seconds for this script to execute."

## final reboot as last action; enables newest kernel
## sudo reboot now

## EoF
