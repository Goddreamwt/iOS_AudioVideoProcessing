#!/bin/bash

# 1.`if else`语句

a="JAVA"
b="PHP"
if [ $a = $b ]
then
echo "成立"
else
echo "不成立"
fi

# 2.'if-else-if-else'

a="JAVA"
b="PHP"
if [ $a = $b ]
then
echo "成立"
elif [ $a ]
then
echo "字符串a不为空"
else
echo "字符串a为空"
fi

# 3.'for'循环语句

for name in "JAVA" "PHP" "JavaScript" "OC"
do
echo 
