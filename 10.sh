#!/bin/bash
#定义一个显示进度的函数,快速显示|/-\
rotate_line(){
tim=0.1
COUNT="0"
while :
do
	COUNT='expr $COUNT + 1'	#循环count每次循环+1
	case $COUNT in
	"1")
		echo -e '-'"\b\c"
		sleep $tim
		;;
	
	"2")
		echo -e '\\'"\b\c"
		sleep $tim
		;;
	"3")
		echo -e "|\b\c"
		sleep $tim
		;;
	"4")
		echo -e "/\b\c"
		sleep $tim
		;;
	*)
		COUNT="0";;
	esac
done 
}
rotate_line
