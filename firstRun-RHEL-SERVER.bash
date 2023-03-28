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

## install container tools
## sudo yum install -y virtualbox
sudo yum install -y snapd
sudo yum install -y lxc
## sudo yum install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## install LAMP packages for services 
sudo yum install httpd mod_evasive mod_ssl ghostscript postfix
sudo yum install mariadb mariadb-server   
sudo yum install php php-mysql php-iconv php-mbstring php-curl php-openssl php-tokenizer
sudo yum install php-simplexml php-spl php-pcre php-dom php-xml php-intl php-json 
sudo yum install  php-xmlpc php-soap php-ctype php-zip php-gd php-ldap php-pecl-apc

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
