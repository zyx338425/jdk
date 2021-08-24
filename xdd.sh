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

 echo "你以为喂饭好了吗.安装已经一半完成。\n现在你需要输入命令 ： cd /xdd/xdd/ && ./xdd     运行初始化并生成配置文件demo_config.yaml， 更新User-Agent
卡住了(第一次使用的bug，无视不管)，Ctrl+c快捷键保存，路径在/xdd/xdd/conf，和其他操作。看不懂怎么改文件,下载我修改过的使用文档\n请输入命令下载  wget -P /xdd/xdd/conf -N https://gitee.com/xiaojiu6/backups/raw/master/js/demo_config.yaml      \n修改配置文件demo_config.yaml  ##路径在/xdd/xdd/conf \n\n\ndemo_config.yaml修改完成后，保存。shel输入命令： cd /xdd/xdd/ && ./xdd\n使用qq小号机器人登录扫码，登录完成后Ctrl+c快捷键保存\n后台启动命令：cd /xdd/xdd/ && nohup ./xdd >/dev/null 2>&1 &
\n
\n 感谢使用！"
