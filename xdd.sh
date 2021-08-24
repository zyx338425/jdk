#!/bin/sh
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

echo "
     ██╗ ██████╗
     ██║ ██╔══██╗
     ██║ ██║  ██║
██   ██║ ██║  ██║
╚█████╔╝ ██████╔╝
 ╚════╝  ╚═════╝ 
 
                     ==== Create by ====
              本脚本由小玖懒人自用！
"
	    echo "安装程序已启动..."
			echo "创建文件夹/xdd"
			mkdir /xdd
			echo "创建完成...即将安装go环境"
	        cd /xdd
			echo "安装go环境"
			wget https://golang.google.cn/dl/go1.17.linux-amd64.tar.gz -O go1.17.linux-amd64.tar.gz
			echo "go环境下载完成!"
			echo "解压"
            tar -xvzf go1.17.linux-amd64.tar.gz
            echo "设置环境变量并启动"
            cd /etc
            rm -f profile
	        wget https://cdn.jsdelivr.net/gh/zyx338425/jdk@master/profile
	        echo "设置环境变量"
	        source /etc/profile
	        go env
	        echo "即将安装git clone"
	        cd /xdd && wget https://cdn.jsdelivr.net/gh/zyx338425/jdk@master/epel-release-latest-7.noarch.rpm
		    rpm -ivh epel-release-latest-7.noarch.rpm
	        yum install -y git
            echo "git clone安装完成"
            echo "拉库安装xdd"
	        git clone https://ghproxy.com/https://github.com/cdle/xdd.git
	        cd /xdd/xdd
		    echo "开始编译xdd....请耐心等待"
			go build
			cd /xdd/xdd && chmod 777 xdd

 echo "半自动安装完成，感谢使用！"
 echo "半自动安装完成，感谢使用！"
 echo "半自动安装完成，感谢使用！"
