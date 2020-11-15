#!/bin/bash
# -------------------------------------------------
echo "当前主机系统如下："
echo "主机名: $(hostname)"
echo "IPV4地址: "  "$(ifconfig|grep "inet "|grep -o "\([0-9]\{1,3\}\.\)\{3\}[1-9]\{1,3\}")"
echo "操作系统版本:" "$(cat /etc/redhat-release)"
echo "内核版本:" "$(uname -r)"
echo "CPU型号:" "$(lscpu|grep -i "model name")"
echo "内存大小" $(free -hm|head -2|tr -s " "  |tail -1|cut -d" " -f2)
echo "磁盘容量" $(fdisk -l /dev/sda|head -2|tail -1|cut -d " " -f3,4)