#!/bin/bash
while :
do
	echo "本地网卡eth0流量信息如下"
	ifconfig eth0 | grep "RX pack" | awk '{print $5}'
	ifconfig eth0 | grep "TX pack" | awk '{print $5}'
	sleep 3
done
