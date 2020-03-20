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

# java
echo "java环境配置..."
sudo cp -r $SHELL_PATH/.java $USER_HOME_PATH/
# jdk 环境配置，可以检查下 ~/.profile
# echo "JAVA_HOME=~/.java/jdk/jdk1.8.0_231"  >>~/.profile
# echo "export PATH=\$JAVA_HOME/bin:\$PATH"  >>~/.profile
# echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar"  >>~/.profile
