#!/bin/bash
## [ insert your name ]
## configure IPTables firewall

## viking mode for safety
set -e

date

## install packages and enable
yum install iptables -y
yum install iptables-services -y
systemctl enable iptables

## deactivate firewalld
service firewalld stop
systemctl disable firewalld 
service iptables start

## flush existing rules
iptables -F; iptables -X; iptables -Z

## accept established inbound traffic 
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

## configure loopback traffic
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -d 127.0.0.0/8 -j REJECT

## Block some common attacks
iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

## allow SSH
iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT

## allow ping
iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT

## allow HTTP(s)
## iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
## iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT

## set default policy 
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD DROP

## save the changes
service iptables save

## show rules
iptables -L -n

date
echo
echo "It took $SECONDS seconds for this script to execute."

## EoF
