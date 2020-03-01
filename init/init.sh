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
echo "oh-my-zsh 配置..."
echo "sudo apt-get install zsh"
sudo apt-get install zsh
# oh-my-zsh
# cp -r $basepath/.oh-my-zsh/ $userHomePath/
# git https://github.com/ohmyzsh/ohmyzsh.git $userHomePath/.oh-my-zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "sh -c \"\$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 默认 zsh
echo "chsh -s /bin/zsh"
chsh -s /bin/zsh
echo "sudo cp $basepath/.zshrc $userHomePath/"
sudo cp $basepath/.zshrc $userHomePath/
# 为 man 添加配色
# sh init-man-color.sh
echo "source ~/.zshrc"
source ~/.zshrc
echo "oh-my-zsh 配置结束"

# vim
echo "vim配置..."
echo "sudo cp -r $basepath/.vim/ $userHomePath/"
sudo cp -r $basepath/.vim/ $userHomePath/
# bundle 插件检出
echo "git clone https://github.com/davidhalter/jedi.git $userHomePath/.vim/bundle/jedi/"
git clone https://github.com/davidhalter/jedi.git $userHomePath/.vim/bundle/jedi/
echo "git clone https://github.com/scrooloose/nerdtree.git $userHomePath/.vim/bundle/nerdtree/"
git clone https://github.com/scrooloose/nerdtree.git $userHomePath/.vim/bundle/nerdtree/
echo "git clone https://github.com/gmarik/vundle.git $userHomePath/.vim/bundle/vundle/"
git clone https://github.com/gmarik/vundle.git $userHomePath/.vim/bundle/vundle/
echo "git https://github.com/Valloric/YouCompleteMe.git $userHomePath/.vim/bundle/YouCompleteMe/"
git https://github.com/Valloric/YouCompleteMe.git $userHomePath/.vim/bundle/YouCompleteMe/
echo "git https://github.com/PythonCharmers/python-future $userHomePath/.vim/bundle/YouCompleteMe/third_party/python-future"
git https://github.com/PythonCharmers/python-future $userHomePath/.vim/bundle/YouCompleteMe/third_party/python-future
echo "git https://github.com/ross/requests-futures $userHomePath/.vim/bundle/YouCompleteMe/third_party/requests-futures"
git https://github.com/ross/requests-futures $userHomePath/.vim/bundle/YouCompleteMe/third_party/requests-futures
echo "git https://github.com/Valloric/ycmd $userHomePath/.vim/bundle/YouCompleteMe/third_party/ycmd"
git https://github.com/Valloric/ycmd $userHomePath/.vim/bundle/YouCompleteMe/third_party/ycmd
# vim配置覆盖
echo "sudo cp $basepath/.vimrc $userHomePath/"
sudo cp $basepath/.vimrc $userHomePath/
## 初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python
echo "初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python"
echo "sudo apt install vim-gtk"
sudo apt install vim-gtk

# linuxbrew
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

# java
echo "java环境配置..."
sudo cp -r $basepath/.java $userHomePath/
# jdk 环境配置，可以检查下 ~/.profile
# echo "JAVA_HOME=~/.java/jdk/jdk1.8.0_231"  >>~/.profile
# echo "export PATH=\$JAVA_HOME/bin:\$PATH"  >>~/.profile
# echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar"  >>~/.profile

# ruby 相关环境
echo "ruby环境安装配置..."
# rbenv
echo "brew install rbenv"
brew install rbenv
echo "rbenv init"
rbenv init
echo "rbenv install --list"
rbenv install --list
echo "rbenv install 2.7.0"
rbenv install 2.7.0
echo "gem install jekyll bundler"
gem install jekyll bundler

## rvm
# curl -L https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable
# cp -r $basepath/.rvm $userHomePath/
# source ~/.rvm/scripts/rvm

# profile
sudo cp $basepath/.profile $userHomePath/

# snap 安装
echo "snap安装"
echo "sudo apt update"
sudo apt update
echo "sudo apt install snapd"
sudo apt install snapd

# github desktop 安装

# node、npm 安装
echo "node、npm 安装"
echo "sudo apt install node"
sudo apt install node
# 网站打包应用程序工具安装 https://github.com/jiahaog/nativefier
echo "网站打包应用程序工具安装 https://github.com/jiahaog/nativefier"
echo "sudo npm install nativefier -g"
sudo npm install nativefier -g
# nativefier --name "AppName"  --icon myicon.icns "http://www.petterobam.cn"

# python3 安装
echo "python3 安装..."
echo "依赖包安装..."
sudo apt update
sudo apt install -y make build-essential libssl-dev zlib1g-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
sudo apt install -y libncurses5-dev libncursesw5-dev xz-utils tk-dev
echo "下载：https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
echo "解压..."
tar xvf Python-3.7.4.tgz
cd Python-3.7.4
echo "配置..."
./configure --enable-optimizations
echo "编译且安装..."
make -j8 && sudo make altinstall
echo "编译清理..."
sudo make clean
echo "python3 --version"
python3 --version
echo "python3 安装结束"
