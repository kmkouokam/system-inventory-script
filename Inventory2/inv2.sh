#!/bin/bash




OS=$(cat /etc/*release | head -1
)
 echo " the os version is $OS "
sleep 3
MS=$(cat /proc/meminfo | head -1
)
 echo "The Size of the Memory is $MS "
sleep 3
HD=$(lsblk | grep disk| awk '{print$4}')

echo " The Harddrive Size is $HD "
sleep 3
CS=$(lscpu | grep "CPU MHz" | awk '{print$3}')

echo " The CPU Speed is $CS "
sleep 3
KV=$(uname -r | awk -F. '{ print $1 "." $2 }')

echo "The Kernel Version is $KV "
sleep 3
SB=$(arch)
 echo "The Sytem bits is $SB "
sleep 3
 HM=$(hostname)

 echo "The Hostname is $HM "
sleep 3

IP=$(hostname -I | awk '{print $1}')

echo "The IP_Address is $IP "
sleep 3
OP=$(ss -tulpn | grep LISTEN)

echo "The following are the open port"
echo $OP
sleep 3
DNS=$( cat /etc/resolv.conf | grep nameserver)
echo " The DNS are $DNS "
sleep 3
MAN=$(dmidecode -t system | grep Manufacturer)

echo "The $MAN "
sleep 3
SV=$(dmidecode -t system | grep Family | awk '{print$2,$3}')

echo "The System family is $SV "
sleep 3
MAC=$(ip a | grep ether | head -1 | awk '{print $2}')
echo "The MAC Address is $MAC