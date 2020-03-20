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

# vim
echo "vim配置..."
echo "sudo cp -r $SHELL_PATH/.vim/ $USER_HOME_PATH/"
sudo cp -r $SHELL_PATH/.vim/ $USER_HOME_PATH/
# bundle 插件检出
echo "git clone https://github.com/davidhalter/jedi.git $USER_HOME_PATH/.vim/bundle/jedi/"
git clone https://github.com/davidhalter/jedi.git $USER_HOME_PATH/.vim/bundle/jedi/
echo "git clone https://github.com/scrooloose/nerdtree.git $USER_HOME_PATH/.vim/bundle/nerdtree/"
git clone https://github.com/scrooloose/nerdtree.git $USER_HOME_PATH/.vim/bundle/nerdtree/
echo "git clone https://github.com/gmarik/vundle.git $USER_HOME_PATH/.vim/bundle/vundle/"
git clone https://github.com/gmarik/vundle.git $USER_HOME_PATH/.vim/bundle/vundle/
echo "git https://github.com/Valloric/YouCompleteMe.git $USER_HOME_PATH/.vim/bundle/YouCompleteMe/"
git https://github.com/Valloric/YouCompleteMe.git $USER_HOME_PATH/.vim/bundle/YouCompleteMe/
echo "git https://github.com/PythonCharmers/python-future $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/python-future"
git https://github.com/PythonCharmers/python-future $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/python-future
echo "git https://github.com/ross/requests-futures $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/requests-futures"
git https://github.com/ross/requests-futures $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/requests-futures
echo "git https://github.com/Valloric/ycmd $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/ycmd"
git https://github.com/Valloric/ycmd $USER_HOME_PATH/.vim/bundle/YouCompleteMe/third_party/ycmd
# vim配置覆盖
echo "sudo cp $SHELL_PATH/.vimrc $USER_HOME_PATH/"
sudo cp $SHELL_PATH/.vimrc $USER_HOME_PATH/
## 初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python
echo "初始化 vim 的时候，解决 YouCompleteMe unavailable: unable to load Python"
echo "sudo apt install vim-gtk"
sudo apt install vim-gtk
