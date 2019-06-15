#!/bin/bash
#执行脚本时,需要cd到源文件目录下.
for i in $(ls *.$1)
	do
		mv $i ${i%.*}.$2
	done
