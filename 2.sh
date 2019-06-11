#!/bin/bash
#author:metalter
read -p "请输入用户名" user
if [ -z $user ];then
	echo "未输入用户名"
	exit
fi
#stty -echo 关闭回显 / stty echo 打开回显
stty -echo
	read -p "请输入密码" pass
stty echo
pass=${pass:-123456}
	useradd "$user"
	echo "$pass" | passwd --stdin "$user"
