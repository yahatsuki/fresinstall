#!/bin/sh

echo -n "New Hostname? > "
read hostname
sudo hostnamectl set-hostname $hostname

echo -n "New Username?"
read username
groupadd $username
sudo usermod -d /home/$username -m -g $username -l $username

echo -n "New Password?"
read password
sudo password $username $password

sudo reboot
