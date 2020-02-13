#!/bin/bash
# 初始化个人Linux个人空间

echo "初始化个人Linux个人空间："
echo "1、期间安装软件可能需要输入密码；"
echo "2、期间安装软件请确认是否需要安装；"

# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)

## zsh
sudo apt-get install zsh
# oh-my-zsh
# cp -r $basepath/.oh-my-zsh/ ~/
# git https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 默认 zsh
chsh -s /bin/zsh
cp $basepath/.zshrc ~/
source ~/.zshrc

# vim
cp -r $basepath/.vim/ ~/
# bundle 插件检出
git clone https://github.com/davidhalter/jedi.git ~/.vim/bundle/jedi/
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/
git https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe/
git https://github.com/PythonCharmers/python-future ~/.vim/bundle/YouCompleteMe/third_party/python-future
git https://github.com/ross/requests-futures ~/.vim/bundle/YouCompleteMe/third_party/requests-futures
git https://github.com/Valloric/ycmd ~/.vim/bundle/YouCompleteMe/third_party/ycmd
git
#
cp $basepath/.vimrc ~/
## 初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python
sudo apt install vim-gtk

# linuxbrew
sudo apt-get install build-essential curl file git
# 为防止 curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
sudo apt-get install ca-certificates -y
sh -c "$(curl -fsSL  https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
## linuxbrew 环境激活，可以检查下 ~/.profile
# echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# java
cp -r $basepath/.java ~/
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
# cp -r $basepath/.rvm ~/
# source ~/.rvm/scripts/rvm

# profile
cp $basepath/.profile ~/

# snap 安装
sudo apt update
sudo apt install snapd

# github desktop 安装
