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
#echo $#
#2.4.5.4 `$*` 参数列表
#echo $*
#2.4.5.5 `$@` 参数列表
#echo $@
#2.4.5.6 `${*}`和`${@}`的区别
#`${*}`参数列表：会将所有参数组成一个字符串`"Andy 200 男"`
#`${@}`参数列表：分开展示`Andy` 200 `男`
#2.4.5.7 `$$` 获取当前shell进程ID
#echo $$
#2.4.5.8 `$!`执行上一个指令的PID
#echo $!

#5、Shell脚本语言-字符串

#5.1
#name='wt'
#echo $name

#5.2
#name="wt"
#echo $name

#5.3 字符串拼接
#name="Andy"
#age=100
#sex="男"
#5.3.1方式一
#info="${name}${age}${sex}"
#echo ${info}
#5.3.2方式二
#info=" 姓名："${name}" 年龄："${age}" 性别："${sex}" "
#echo ${info}

#5.4 字符串长度获取
#name="Andy"
#echo ${#name}

#5.5 字符串截取
#name="I hava a Dream"
#方式一：从字符串第3个开始截取，截取3个
#result=${name:2:3}
#echo ${result}

#方式二：从字符串第5个开始截取，到最后一个结束
#length=${#name}
#result=${name:2:length-1}
#echo ${result}
#也可以写成
#result2=${name:2:${#name}-1}
#echo ${result2}
#也可以写成
#result3=${name:2}
#echo ${result3}

#5.6 字符串删除
#5.6.1 语法一 ${变量名#删除字符串 正则表达式}
#规则：从左到右进行匹配，匹配到才可以删除

#案例一
#name="I hava a Dream"
#result=${name#Dream}
#echo ${result}
#说明结果匹配不到

#案例二
#name="I hava a Dream"
#result=${name#I}
#echo ${result}


#案例三 查找字符串中指定的字符第一次出现时，并且删除前面所有的字符（包含自己）
#name="I hava a Dream D"
#result=${name#*D}
#echo ${result}

#案例四 指定删除范围(I-a) 要从第一个字符开始删除（只能是第一个字符），指定删除到哪个字符（第一次出现）
#name="I hava a Dream D"
#result=${name#I*a}
#echo ${result}

#5.6.2 语法二 ${变量名##删除字符串 正则表达式}
#从右边开始检查，删除剩下的字符
#作用 从字符串结尾（右边）开始匹配要保留的字符

#案例一
#name="I hava a Dream D"
#result=${name##*a}
#echo ${result}

#总结：语法一和语法二都是从左到右删除，但是查找的方向不同


#5.6.3 语法三 ${变量名%删除字符串 正则表达式}
#从字符串结尾开始匹配，删除匹配的字符串

#案例一：查找第一个字符
#name="I hava a Dream"
#result=${name%a}
#echo ${result}
#查不到
#name="I hava a Dream"
#result=${name%m}
#echo ${result}
#可以查到并删除

#案例二：查找指定字符第一个，并且删除前面所有字符（包含自己）
#name="I hava a Dream"
#result=${name%h*}
#echo ${result}

#案例三：指定删除范围
#name="I hava a Dream"
#result=${name%D*m}
#echo ${result}

#5.6.4 语法四 ${变量名%%删除字符串 正则表达式} 查询方向从右往左

#案例一：查找指定字符最后一个，并且删除前面所有的字符(包含自己在内)
#name="I hava a Dream"
#result=${name%%a*}
#echo ${result}


#案例

#删除中间字符串hava如何实现？

name="I hava a Dream"
result=${name%h*m}
result2=${name#I*a*a}
echo ${result}${result2}

#文件操作
path="/Users/mac/Desktop/GitHub/iOS_AudioVideoProcessing/Shell/hello.sh"
#获取文件名称
result=${path#/*/*/*/*/*/*/}
echo ${result}
#获取文件路径
result2=${path%h*h}
echo ${result2}

echo "执行了"



















