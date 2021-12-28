!/bin/bash
## [ insert your name ]
## Setup a local personal server after a clean RHEL install

## viking mode for safety
set -e

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

## install packages for services 
sudo yum install httpd
sudo yum install mariadb
sudo yum install php


date
echo
echo "It took $SECONDS seconds for this script to execute."

## final reboot as last action; enables newer kernel
## sudo reboot now

## EoF
