#!/bin/bash

#sudo passwd
#sudo cp sudoders /etc/
#mkdir .ssh
#cp id_rsa .ssh/  
#chmod 600 .ssh/id_rsa

apt=http://mirrors.163.com/ubuntu
sudo -s <<E
#cd /etc/apt/
#cp sources.list sources.list.bak
#sed -i "s,http://[^/].*/ubuntu,$apt,g" sources.list
#apt-get update
#apt-get install -y vim
#cat .vimrc >> /etc/vim/vimrc
E

sudo apt-get install bcmwl-kernel-source
sudo modprobe -r b43 ssb wl
sudo modprobe wl
sudo mv m1330.conf /etc/modprobe.d

