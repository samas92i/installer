#!/bin/bash
#
# Created by Samas92i
#
# Copyright 2015 @ Samas92i. All rights reserved.

if [ -f /tmp/sources.status ]
then
	echo "[INFOS] Sources ok"
else
	rm /etc/apt/sources.list
	echo "deb http://http.debian.net/debian wheezy main" > /etc/apt/sources.list
	echo "deb-src http://http.debian.net/debian wheezy main" >> /etc/apt/sources.list
	echo "" >> /etc/apt/sources.list
	echo "deb http://http.debian.net/debian wheezy-updates main" >> /etc/apt/sources.list
	echo "deb-src http://http.debian.net/debian wheezy-updates main" >> /etc/apt/sources.list
	echo "" >> /etc/apt/sources.list
	echo "deb http://security.debian.org/ wheezy/updates main" >> /etc/apt/sources.list
	echo "deb-src http://security.debian.org/ wheezy/updates main" >>  /etc/apt/sources.list
	echo "" >> /etc/apt/sources.list
	echo ""
	echo "[INFOS] Sources mis à jours"
fi

apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade