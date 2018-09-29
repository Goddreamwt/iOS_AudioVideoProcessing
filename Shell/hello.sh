#!/bin/bash

#1、第一个Shell程序
#echo "hello world!"

#2、Shell脚本语法-注释
# 输出了Hello world

#3、Shell脚本语言-定义变量
 #3.1定义变量时，变量名不需要加`$`符号
 #3.2变量名和等号不能有空格，它和一般的语言不一样

 #正确写法
 #name="smile2018"
 #错误写法
 #name = "smile2018"

 #3.3变量名首字母必须是字母+下划线(a-z,A-Z)
 #_age=100
 #输出结果$取值
 #echo $_age

#4、Shell脚本语言变量语法
 #4.1 只读变量
 #name="HelloApp"
 #readonly name
 #name="HelloApp2020"
 #4.2 删除变量
 #name="Andy"
 #echo $name
 #删除
 #unset name
 #echo $name

#4.3位置变量
#文件名称
#filename=${0}
#参数1
#name=${1}
#参数2
#age=${2}
#参数3
#sex=${3}
#echo "文件名：${filename}"
#echo "姓名：${name} 年龄:${age} 性别:${sex}"

#4.4特殊变量
#文件名称
#echo ${0}
#故意写的错误代码
#name = "错误了"
#表示返回上一个命令，执行状态返回值
#0：表示执行成功  1：程序执行结果  2：表示程序状态返回码(0-255)
#echo ${?}

#2.4.5.3 `$#` 参数个数
echo $#
#2.4.5.4 `$*` 参数列表
echo $*
#2.4.5.5 `$@` 参数列表
echo $@
#2.4.5.6 `${*}`和`${@}`的区别
#`${*}`参数列表：会将所有参数组成一个字符串`"Andy 200 男"`
#`${@}`参数列表：分开展示`Andy` 200 `男`
#2.4.5.7 `$$` 获取当前shell进程ID
echo $$
#2.4.5.8 `$!`执行上一个指令的PID
echo $!

echo "执行了"


