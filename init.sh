#!/bin/bash

#passwd
cp sudoers /etc/

#mkdir .ssh
#cp id_rsa .ssh/  
#chmod 600 .ssh/id_rsa

grep -q xbmod /etc/apt/sources.list || {
	apt=http://mirrors.163.com/ubuntu
	cp /etc/apt/sources.list /etc/apt/sources.list.bak
	sed -i "s,http://[^/].*/ubuntu,$apt,g" /etc/apt/sources.list
	echo "#xbmod" >> /etc/apt/sources.list
	apt-get update
}

grep -q xbmod /etc/vim/vimrc || {
	apt-get install -y vim
	cat .vimrc >> /etc/vim/vimrc
}

grep -q xbmod /etc/xdg/awesome/rc.lua || {
	apt-get install -y rxvt 
	sed -i 's,^terminal = .*,terminal = "rxvt"  -- xbmod,' \
		/etc/xdg/awesome/rc.lua 
	sed -i'/^layouts =/{N;aawful.layout.suit.fair,
}' \
		/etc/xdg/awesome/rc.lua 
}

grep -q xbmod /etc/default/locale || {
	cat >> /etc/default/locale <<E
# xbmod
LANG=C
LANGUAGE=en
E
}

grep -q xbmod /etc/ssh/sshd_config || {
	apt-get install -y openssh-server
	cat >> /etc/ssh/sshd_config <<E
# xbmod
TCPKeepAlive Yes
E
}

#apt-get install bcmwl-kernel-source
#modprobe -r b43 ssb wl
#modprobe wl
#cp m1330.conf /etc/modprobe.d

