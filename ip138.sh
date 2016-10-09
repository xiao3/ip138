#!/bin/bash

in_ip_address=$1

curl -s "http://ip138.com/ips138.asp?ip=${in_ip_address}&action=2"| iconv -f gb2312 -t utf-8 | grep "本站数据" | awk -F"本站数据：" '{print $2}' | awk -F"</li>" '{print "["$1"]"}'

