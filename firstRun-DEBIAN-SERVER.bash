#!/bin/bash
## 
## Setup a local personal device after a clean Debian install

## viking mode for safety
set -e

date

## update the system to current packages
sudo apt-get update && sudo apt-get upgrade -y
sudo apt update && sudo apt upgrade -y

## generate a fresh set of SSH keys
## ssh-keygen

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
