#!/bin/bash
#author:metalter
#提取根分区剩余空间
disk_size=$(df / | awk '/\//{print $4}')
#提取内存剩余空间
mem_size=$(free | awk '/Mem/{print $4}')
while :
do
	if [ $disk_size -le 512000 -a $mem_size -le 1024000 ];then
	mail -s Warning root <<EOF
insufficient resources
EOF
	fi
done
