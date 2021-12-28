#!/bin/bash
## 
## Setup a local personal device after a clean RHEL install

## viking mode for safety
set -e

date

## update the system to current packages
sudo yum update && sudo yum upgrade -y

## setup yubikeys; https://support.yubico.com/support/solutions/articles/15000010964-enabling-the-yubico-ppa-on-ubuntu
## sudo add-apt-repository ppa:yubico/stable && sudo yum update
## sudo yum install -y yubikey-manager-qt

## generate a fresh set of SSH keys
## ssh-keygen

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
