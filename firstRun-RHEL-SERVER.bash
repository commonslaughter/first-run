#!/bin/bash
## [ insert your name ]
## Setup a local personal server after a clean RHEL install

## viking mode for safety
set -e

## set the timezone
timedatectl set-timezone America/Chicago

date

## update the system to current packages
sudo yum update -y
sudo yum upgrade -y

## generate a fresh set of SSH keys
## ssh-keygen

## install system tools
## sudo yum install -y snmpd            
sudo yum install -y salt-minion      
## sudo yum install -y salt-master      
## sudo yum install -y chef
## sudo yum install -y ansible
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

## install LAMP packages for services 
## sudo yum install httpd mod_evasive mod_ssl ghostscript postfix
## sudo yum install mariadb mariadb-server nano tar curl
## sudo yum install php php-mysql php-iconv php-mbstring php-curl php-openssl php-tokenizer
## sudo yum install php-simplexml php-spl php-pcre php-dom php-xml php-intl php-json 
## sudo yum install  php-xmlpc php-soap php-ctype php-zip php-gd php-ldap php-pecl-apc

## Start and enable services
## systemctl enable httpd
## systemctl start httpd
## systemctl enable mariadb
## systemctl start mariadb
service cockpit start
systemctl enable cockpit 
## service postfix start
## systemctl enable postfix

## show status of new services 
## service iptables status
## service httpd status 
service cockpit status
## service postfix status
## service mariadb status

date
echo
echo "It took $SECONDS seconds for this script to execute."

## final reboot as last action; enables newer kernel
## sudo reboot now

## EoF
