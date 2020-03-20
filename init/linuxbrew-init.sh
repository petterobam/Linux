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

linuxbrew
echo "linuxbrew安装配置..."
echo "sudo apt-get install build-essential curl file git"
sudo apt-get install build-essential curl file git
# 为防止 curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
echo "为防止 curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接"
echo "sudo apt-get install ca-certificates -y"
sudo apt-get install ca-certificates -y
echo "在线安装 Linuxbrew：sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)\""
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
## linuxbrew 环境激活，可以检查下 ~/.profile
# echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
echo "linuxbrew安装配置结束"
