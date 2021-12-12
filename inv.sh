#!/bin/bash

#Description: Complete server inventory script
#Author:Ernestine Motouom; Email: kmkouokam@yahoo.com
#Date: 12/11/2021



echo "The OS runnung is:"
sleep 4
cat /etc/*release | head -2
echo "The version is:"
sleep 4
cat /etc/*release | head -1

sleep 3
echo "The size of the memory is:"
sleep 3
echo
free -m
#echo "or"
#free -g
#echo "or"
#free -t
#echo "or"

#cat /proc/meminfo | grep head -12
sleep 3
echo "The size of the harddrive is:"
sleep 3
# fdisk -l
sleep 3
lsblk
sleep 3

echo "The number of CPU is:"

sleep 3
iostat | head -1 | awk '{print $6, $7}'
sleep 3

#cat /proc/cpuinfo
#echo "or"
sleep 4
#lscpu | head -4
sleep 3
#sar -u | head -1 | awk '{print $6, $7}'
sleep 3
#echo "or"

#nproc

echo "The kernel version is"
sleep 3
uname -r
sleep 3
#echo "or"
#uname -a | head -1 | awk '{print $1, $3}'
sleep 3
#iostat | head -1 | awk '{print $1, $2}'
sleep 2
echo "The system bit is:"

sleep 3
arch
sleep 3
#uname -m
sleep 3
#iostat | head -1 | awk '{print $5}'
sleep 3
# getconf_LONG_BIT

sleep 3

echo "The hostname is:"

sleep 3
hostname
sleep 3

echo "The ip address is:"
hostname -I | awk '{print $1}'
sleep 3

echo " List of opened ports:"
lsof -i -P -n | grep LISTEN | awk '{print $1, $8, $9, $10}'
sleep 3

echo "The DNS (Domain Name Server) is:"
sleep 3
cat /etc/resolv.conf
sleep 3
#less /etc/resolv.conf
sleep 3
echo "The gateway is:"
sleep 3
route -n | head -3 | tail -1 | awk '{print $2}'
echo "Who is the manufacturer of this server"
sleep 3
dmidecode -t system | grep Manufacturer
sleep 2
# inxi -M

echo "Is the system virtual or physical"
sleep 3
virt-what
sleep 3
dmidecode -s system-manufacturer
echo " what is the mac address"
sleep 3
ip a | grep ether | head -1 | awk '{print $2}'

echo "or"
#ifconfig | grep ether | head -2 | tail -1 | awk '{print $2}'
echo "how do you set the hostname"
sleep 3
 echo "The command is:hostnamectl set-hostname [hostNmane]"

echo "*****Job well done*****"
echo "*****Thank You*****"