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

## generate a fresh set of SSH keys
ssh-keygen

## generate keys for github
## ssh-keygen -t ed25519 -C "[ insert your name ]"

## install system tools
sudo yum install -y snmpd            
sudo yum install -y salt-minion      
## sudo yum install -y salt-master      
## sudo yum install -y chef
sudo yum install -y ansible
sudo yum install -y cockpit
sudo yum install -y net-tools
sudo yum install -y nmap
sudo yum install -y iptables
sudo yum install -y iptables-services
sudo yum install -y htop
sudo yum install -y git
sudo yum install -y backupninja
sudo yum install -y lynis
sudo yum install -y rkhunter
sudo yum install -y curl
sudo yum install -y tar
sudo yum install -y nano
sudo yum install -y wget

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
