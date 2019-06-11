#!/bin/bash
#author:metalter
#使用取余算法将随机数变为1-100的随机数
num=$[RANDOM%100+1]
while :
do
        read -p "计算机随机生成了一个1-100的随机数,你猜:" cai
        if [ $cai -eq $num ];then
                echo "猜对了"
                exit
        elif [ $cai -gt $num ];then
                echo "大了"
        else
                echo "小了"
        fi
done
