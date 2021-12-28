#!/bin/bash
## 
## Setup a local personal server after a clean RHEL install

## viking mode for safety
set -e

date

## update the system to current packages
sudo yum update && sudo yum upgrade -y


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
