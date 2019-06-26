#!/bin/bash
#awk使用-F 选项制定文件内容的分隔符
awk -F "[/:]" '$7":"$8>="10:30"&& $7":"$8<="14:30"' /var/log/httpd/access_log | wc -l
awk -F "[/:]" '$7":"$8>="10:30"&& $7":"$8<="14:30"{print $1}' /var/log/httpd/access_log 
