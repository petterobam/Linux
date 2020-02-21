#!/bin/bash
# 初始化个人Linux个人空间
echo "初始化个人Linux个人空间：\n"
echo "1、期间安装软件可能需要输入密码；\n"
echo "2、期间安装软件请确认是否需要安装；\n"

# 个人 home 目录
userHomePath=$(cd `~`; pwd)
echo "当前用户 home 目录: $userHomePath"
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"

## zsh
sudo apt-get install zsh
# oh-my-zsh
# cp -r $basepath/.oh-my-zsh/ $userHomePath/
# git https://github.com/ohmyzsh/ohmyzsh.git $userHomePath/.oh-my-zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 默认 zsh
chsh -s /bin/zsh
sudo cp $basepath/.zshrc $userHomePath/
source ~/.zshrc

# vim
sudo cp -r $basepath/.vim/ $userHomePath/
# bundle 插件检出
git clone https://github.com/davidhalter/jedi.git $userHomePath/.vim/bundle/jedi/
git clone https://github.com/scrooloose/nerdtree.git $userHomePath/.vim/bundle/nerdtree/
git clone https://github.com/gmarik/vundle.git $userHomePath/.vim/bundle/vundle/
git https://github.com/Valloric/YouCompleteMe.git $userHomePath/.vim/bundle/YouCompleteMe/
git https://github.com/PythonCharmers/python-future $userHomePath/.vim/bundle/YouCompleteMe/third_party/python-future
git https://github.com/ross/requests-futures $userHomePath/.vim/bundle/YouCompleteMe/third_party/requests-futures
git https://github.com/Valloric/ycmd $userHomePath/.vim/bundle/YouCompleteMe/third_party/ycmd
# vim配置覆盖
sudo cp $basepath/.vimrc $userHomePath/
## 初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python
sudo apt install vim-gtk

# linuxbrew
sudo apt-get install build-essential curl file git
# 为防止 curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
sudo apt-get install ca-certificates -y
# echo "在线安装 Linuxbrew：sh -c \$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
## linuxbrew 环境激活，可以检查下 ~/.profile
# echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# java
sudo cp -r $basepath/.java $userHomePath/
# jdk 环境配置，可以检查下 ~/.profile
# echo "JAVA_HOME=~/.java/jdk/jdk1.8.0_231"  >>~/.profile
# echo "export PATH=\$JAVA_HOME/bin:\$PATH"  >>~/.profile
# echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar"  >>~/.profile

# ruby 相关环境

# rbenv
brew install rbenv
rbenv init
rbenv install --list
rbenv install 2.7.0
gem install jekyll bundler

## rvm
# curl -L https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable
# cp -r $basepath/.rvm $userHomePath/
# source ~/.rvm/scripts/rvm

# profile
sudo cp $basepath/.profile $userHomePath/

# snap 安装
sudo apt update
sudo apt install snapd

# github desktop 安装

# node、npm 安装
sudo apt install node
# 网站打包应用程序工具安装 https://github.com/jiahaog/nativefier
sudo npm install nativefier -g
# nativefier --name "AppName"  --icon myicon.icns "http://www.petterobam.cn"
