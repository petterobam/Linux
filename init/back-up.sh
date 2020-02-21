#!/bin/bash
# 初始化备份个人Linux个人空间
# 个人 home 目录
userHomePath=$(cd `~`; pwd)
echo "当前用户 home 目录: $userHomePath"
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"

# oh-my-zsh
echo "开始备份 oh-my-zsh ..."
echo "拷贝 .oh-my-zsh 目录： sudo cp -r $userHomePath/.oh-my-zsh/ $basepath"
sudo cp -r $userHomePath/.oh-my-zsh/ $basepath
echo "拷贝 .zshrc 文件：sudo cp $userHomePath/.zshrc $basepath"
sudo cp $userHomePath/.zshrc $basepath
echo "备份 oh-my-zsh 结束"

# vim
echo "开始备份 vim ..."
echo "拷贝 .vim 目录：sudo cp -r $userHomePath/.vim/ $basepath"
sudo cp -r $userHomePath/.vim/ $basepath
echo "拷贝 .vimrc 文件：p $userHomePath/.vimrc $basepath"
sudo cp $userHomePath/.vimrc $basepath
echo "备份 vim 结束"

# linuxbrew 略去，用命令装
# echo "开始备份 Linuxbrew ..."
# echo "拷贝 .linuxbrew 目录：sudo cp -r $userHomePath/.linuxbrew $basepath"
# sudo cp -r $userHomePath/.linuxbrew $basepath
# echo "在线安装 Linuxbrew：sh -c \$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
# echo "备份 Linuxbrew 结束"

# java
echo "开始备份 jdk ..."
echo "拷贝 .java 目录：sudo cp -r $userHomePath/.java $basepath"
sudo cp -r $userHomePath/.java $basepath
echo "备份 jdk 结束"

# profile
echo "开始备份 .profile ..."
echo "拷贝 .profile 文件：sudo cp $userHomePath/.profile $basepath"
sudo cp $userHomePath/.profile $basepath
echo "备份 .profile 结束"
