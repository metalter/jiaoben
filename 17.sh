#!/bin/bash
#使用echo -ne 打印色块,并且打印完成后不自动换行,在同一行继续输出其他色块
for i in $(seq 8)
do
	for j in $(seq 8)
	do
		sum=$[i+j]
		if [ $[sum%2] -eq 0 ];then
			echo -ne  "\033[46m \033[0m"
		else 
			echo -ne  "\033[47m \033[0m"
		fi
	done
	echo
done
