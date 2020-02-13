#!/bin/bash
# 初始化备份个人Linux个人空间

# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)

# oh-my-zsh
cp -r ~/.oh-my-zsh/ $basepath
cp ~/.zshrc $basepath

# vim
cp -r ~/.vim/ $basepath
cp ~/.vimrc $basepath
sudo apt install vim-gtk

# linuxbrew 略去，用命令装
# cp -r ~/.linuxbrew $basepath
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# java
cp -r ~/.java $basepath

# profile
cp ~/.profile $basepath
