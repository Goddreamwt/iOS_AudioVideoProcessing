#!/bin/bash

# 初始化数组
#方式一：字面量
#name=("wt" "Andy" "Cindy" "柚子" "芒果")
#输出 默认打印第一个元素
#echo $name

#方式二
name=()
name[0]="wt"
name[1]="Andy"
name[2]="Cindy"
name[3]="柚子"
name[4]="芒果"

#读取数组
echo ${name[0]}  ${name[1]}
echo ${name[@]}

#数组长度
echo ${#name[@]}
echo ${#name[*]}

# 获取单个元素字符串长度
echo ${#name[3]}
