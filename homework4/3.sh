#!usr/bin/env bash

#前五个问题直接写入txt
printf "访问来源主机TOP 100和分别对应出现的总次数\n" >> data1.txt
#sort排序用法
cat web_log.tsv|awk -F'\t' '{print $1}'| sort | uniq -c | sort -nr | head -n 100 >> data1.txt 

printf "访问来源主机TOP 100 IP和分别对应出现的总次数\n">> data1.txt


#grep -E正则表达式有所借鉴

cat web_log.tsv|awk -F'\t' '{print $1}'|grep -E "^[0-9]"| sort | uniq -c | sort -nr | head -n 100 >> data1.txt

printf "最频繁被访问的URL TOP 100\n"> data.txt
cat web_log.tsv|awk -F'\t' '{print $5}'| sort |uniq -c | sort -nr | head -n 100 >> data.txt

printf "不同响应状态码的出现次数和百分比\n">> data.txt
cat web_log.tsv| awk '{num[$6]++;s+=1}END{for (i in num) printf "%s %d %6.5f%%\n", i, num[i], num[i]/s*100}'| sort >> data.txt

printf "统计403/404状态码对应的TOP 10 URL和次数\n">> data.txt
printf "403:">> data.txt
cat web_log.tsv|awk -F'\t' '{if($6=="403")print $5}'| sort | uniq -c | sort -nr | head -n 10 >> data.txt

printf "404:">> data.txt
cat web_log.tsv|awk -F'\t' '{if($6=="404")print $5}'| sort | uniq -c | sort -nr | head -n 10 >> data.txt



printf "给定URL\n">> data2.txt
#给定一个URL
url='/images/'
cat web_log.tsv|awk -F'\t' '{if($5=="'$url'")print $1,$5}' | sort | uniq -c | sort -nr | head -n 100 >> data2.txt
