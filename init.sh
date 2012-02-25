#!/bin/bash

#sudo passwd
#sudo cp sudoders /etc/

#mkdir .ssh
#cp id_rsa .ssh/  
#chmod 600 .ssh/id_rsa

apt=http://mirrors.163.com/ubuntu
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed -i "s,http://[^/].*/ubuntu,$apt,g" /etc/apt/sources.list
sudo apt-get update

#sudo apt-get install -y vim
#cat .vimrc >> /etc/vim/vimrc

#sudo apt-get install bcmwl-kernel-source
#sudo modprobe -r b43 ssb wl
#sudo modprobe wl
#sudo cp m1330.conf /etc/modprobe.d

