#!/bin/bash

# 1.显示普通字符串
#echo ""iPhoneX 标配 8388""

# 2.显示转义字符
#echo ""iPhoneX 顶配 9688""

# 3.显示变量
#iphone="iPhoneX"
#echo "${iphone} 9688"

# 4.显示换行
#错误写法
#echo "iPhonex \n hello未来"
#正确写法
#echo -e "iPhoneX \nhello未来"

# 5.不换行
#echo -e "iPhoneX hello 未来 \c"
#echo "科技"

# 6.显示一个执行命令
#要求：输出当前时间

#echo `date`

# 7.退出命令
#写法一
#iphone="wt买了一台iPhoneX，非常不好，出BUG"
#echo ${iphone}
#exit
#echo "完蛋了，买了假货"

#写法二
iphone="404找不到错误"
echo ${iphone}
exit 0


