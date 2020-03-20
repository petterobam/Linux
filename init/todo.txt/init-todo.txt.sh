#########################################################################
# File Name: init-todo.txt.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-03-01 14:05
#########################################################################
#!/bin/bash

# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

# OS X / macOS
# brew install todo-txt
# Linux
echo "todo.txt-cli安装..."
echo "git clone https://github.com/todotxt/todo.txt-cli.git"
git clone https://github.com/todotxt/todo.txt-cli.git
echo "cd todo.txt-cli"
cd todo.txt-cli
echo "make"
make
echo "sudo make install"
sudo make install
echo "mkdir $USER_HOME_PATH/.todo"
mkdir $USER_HOME_PATH/.todo
echo "cp $SHELL_PATH/todo.txt.config $USER_HOME_PATH/.todo/config"
cp $SHELL_PATH/todo.txt.config $USER_HOME_PATH/.todo/config
echo "安装结束"

# 配置环境变量
# echo "export TODO_DIR=\"$HOME/.todo\"" >> $USER_HOME_PATH/.zshrc
