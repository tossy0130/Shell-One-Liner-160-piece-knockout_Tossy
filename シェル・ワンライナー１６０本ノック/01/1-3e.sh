#!/bin/bash

seq 5 | awk '{print $1%2 ? "偶数" : "奇数"}'

seq 5 | awk '{print $1 % 2 ? "偶数" : "奇数"}' | sort

seq 5 | awk '{print $1 % 2 ? "偶数" : "奇数"}' | sort | uniq -c
<< COMMENTOUT
出力
   2 奇数
   3 偶数
COMMENTOUT

seq 5 | awk '{print $1 % 2 ? "偶数" : "奇数"}' | sort | uniq -c | awk '{print $2, $1}'