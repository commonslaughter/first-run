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
sudo apt update -y
sudo apt upgrade -y

## generate a fresh set of SSH keys
ssh-keygen

## generate keys for github
## ssh-keygen -t ed25519 -C "[ insert your name ]"

## install system tools
sudo apt install -y snmpd            
sudo apt install -y salt-minion      
## sudo apt install -y salt-master      
## sudo apt install -y chef
sudo apt install -y ansible
sudo apt install -y cockpit
sudo apt install -y net-tools
sudo apt install -y nmap
sudo apt install -y iptables
sudo apt install -y iptables-services
sudo apt install -y htop
sudo apt install -y git
sudo apt install -y backupninja
sudo apt install -y lynis
sudo apt install -y rkhunter
sudo apt install -y curl
sudo apt install -y tar
sudo apt install -y nano
sudo apt install -y wget

## install LAMP packages for services 
sudo apt install httpd mod_evasive mod_ssl ghostscript postfix
sudo apt install mariadb mariadb-server   
sudo apt install php php-mysql php-iconv php-mbstring php-curl php-openssl php-tokenizer
sudo apt install php-simplexml php-spl php-pcre php-dom php-xml php-intl php-json 
sudo apt install  php-xmlpc php-soap php-ctype php-zip php-gd php-ldap php-pecl-apc

## Start and enable services
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo service cockpit start
sudo systemctl enable cockpit 
sudo service postfix start
sudo systemctl enable postfix
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl start iptables

## show status of new services 
sudo service iptables status
sudo iptables -L
sudo service httpd status 
sudo service cockpit status
sudo service postfix status
sudo service mariadb status

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
