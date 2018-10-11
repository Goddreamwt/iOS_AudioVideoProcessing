#!/bin/bash

#Shell脚本语言(参数传递)

echo ${0} ${1} ${2}

echo ${#}

echo ${*}

#Shell脚本语言(基本运算符)
#1.1 "+"运算
#注意："expr"规定命令

a=8388
b=7699
c=`expr $a + $b`
echo "c的值：$c"


#1.2 "-"运算
a=8388
b=7699
c=`expr $a - $b`
echo "c的值：$c"

#1.3 "*"运算
a=8388
b=7699
c=`expr $a \* $b`
echo "c的值：$c"

#1.4 "/"运算

a=8388
b=7699
c=`expr $a / $b`
echo "c的值：$c"

#1.5 "%"运算

a=8388
b=7699
c=`expr $a % $b`
echo "c的值：$c"

#1.6 "="运算

a=8388
b=$a
echo "b的值：$b"

#1.7 "=="运算

a=8388
b=8388
if [ $a == $b ]
then
echo "a等于b"
else
echo "a不等于b"
fi

# 2、布尔运算符
# 2.1  `!`:非运算，表达式为true，返回true，否则返回false
a=100
b=200
if [ $a != $b ]
then
     echo "a不等于b"
fi

# 2.2 `-o`:或运算，有一个表达式为true，返回true
#-lt 左边的数是否小于右边的
#-gt 左边的数是否大于右边的
a=100
b=200
if [ $a -lt 200 -o $b -gt 200 ]
then
echo "成立"
fi

# 2.3 `-a`:与运算，两个表达式为true，返回true
#-lt 左边的数是否小于右边的
#-gt 左边的数是否大于右边的
a=100
b=200
if [ $a -lt 200 -o $b -gt 100 ]
then
echo "成立"
else
echo "不成立"
fi

# 3、逻辑运算符
# 3.1 `&&`:逻辑且
#-lt 左边的数是否小于右边的
#-gt 左边的数是否大于右边的

a=100
b=200
if [ $a -lt 200 ] && [ $b -gt 100 ]
then
echo "成立"
else
echo "不成立"
fi

#### 3.2 `||`:逻辑或

#-lt 左边的数是否小于右边的
#-gt 左边的数是否大于右边的
a=100
b=200
if [ $a -lt 200 ] || [$b -gt 100 ]
then
echo "成立"
else
echo "不成立"
fi

# 4、字符串运算符
# 4.1 `=`:检测两个字符串是否相等，如果相等返回true
a="逗你玩"
b="逗你玩"
if [ $a = $b ]
then
echo "等于"
else
echo "不等于"
fi

# 4.2 `!=`:检测两个字符串是否相等，如果不相等返回true

a="逗你玩"
b="逗你玩"
if [ $a != $b ]
then
echo "等于"
else
echo "不等于"
fi

# 4.3 `-z`:检测字符串长度是否为0，如果是返回true

a="逗你玩"
if [ -z $a ]
then
echo "a为空"
else
echo "a不为空，存在"
fi

# 4.4 `-n`:检测字符串长度是否为0，如果不是0返回true

a="逗你玩"
if [ -n $a ]
then
echo "a不为空，存在"
else
echo "a为空"
fi

# 4.5 `字符串`:检测字符串是否为空，不为空返回true

a=""
if [ $a ]
then
echo "a不为空，存在"
else
echo "a为空"
fi

# 5、文件测试运算符
# 5.1 `-d file`:检测文件是否是目录，如果是，返回true
file="/Users/mac/Desktop/GitHub/iOS_AudioVideoProcessing/Shell/hello.sh"
if [ -d $file ]
then
echo "是一个目录"
else
echo "不是一个目录"
fi

# 5.2 `-r file`:检测文件是否可读，如果是，返回true

if [ -r $file ]
then
echo "可读"
else
echo "不可读"
fi

# 5.3 `-w file`:检测文件是否可写，如果是，返回true

if [ -w $file ]
then
echo "可写"
else
echo "不可写"
fi

# 5.4 `-x file`:检测文件是否可执行，如果是，返回true


if [ -x $file ]
then
echo "可执行"
else
echo "不可执行"
fi


# 5.5 `-f file`:检测文件是否是普通文件(既不是目录，也不是设备文件)，如果是，返回true

if [ -f $file ]
then
echo "是普通文件"
else
echo "不是普通文件"
fi

# 5.6 `-s file`:检测文件是否为空(文件大小为0)，如果不为空，返回true

if [ -s $file ]
then
echo "不是空文件"
else
echo "是空文件"
fi

# 5.7 `-e file`:检测文件是否存在(包含文件路径)，如果存在，返回true

if [ -e $file ]
then
echo "存在"
else
echo "不存在"
fi
