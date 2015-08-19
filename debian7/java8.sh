#!/bin/bash
#
# Created by Samas92i
#
# Copyright 2015 @ Samas92i. All rights reserved.
	
verify_packet () {
	if [ `dpkg-query -W --showformat='${Status}\n' $1 2>/dev/null | grep 'install ok installed' | wc -l` -ge 1 ]; then
		echo 1
	else
		echo 0
	fi
}

if [ $(verify_packet openjdk-8-jre) -eq 1 ]
then
	echo "Java 8 est déjà installé !"
else
	apt-get install -y openjdk-7-jre
fi