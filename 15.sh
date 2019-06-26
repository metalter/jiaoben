#!/bin/bash
#seq 100 可以快速自动生成100个数
sum=0
for i in $(seq $1)
do
	sum=$[sum+i]
done
echo "和是:$sum"
