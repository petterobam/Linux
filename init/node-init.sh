#!/bin/bash
# 初始化个人Linux个人空间
echo "初始化个人Linux个人空间：\n"
echo "1、期间安装软件可能需要输入密码；\n"
echo "2、期间安装软件请确认是否需要安装；\n"

# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

# node、npm 安装
echo "node、npm 安装"
echo "sudo apt install node"
sudo apt install node
# 网站打包应用程序工具安装 https://github.com/jiahaog/nativefier
echo "网站打包应用程序工具安装 https://github.com/jiahaog/nativefier"
echo "sudo npm install nativefier -g"
sudo npm install nativefier -g
# nativefier --name "AppName"  --icon myicon.icns "http://www.petterobam.cn"
