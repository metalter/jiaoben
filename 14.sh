#!/bin/bash
#netstat -nta 可以查看所有链接状态 -a 查看所有,-t查看tcp连接信息,-n数字格式显示
#sort 按数字大小排序,uniq 将重复的删除,并统计重复的次数
netstat -nta | awk '{print $5}' | awk '{print $1}' | sort -nr | uniq -c
