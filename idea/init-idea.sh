#########################################################################
# File Name: init-idea.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-02-29 16:15
#########################################################################
#!/bin/bash
echo "请先下载 ideaIU-2017.3.tar.gz 到该目录下！"

# 个人 home 目录
userHomePath=$(cd `~`; pwd)
echo "当前用户 home 目录: $userHomePath"
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"

echo "mkdir -p $userHomePath/dev/idea"
mkdir -p $userHomePath/dev/idea
echo "tar -zxvf ideaIU-2017.3.tar.gz -C $userHomePath/dev/idea"
tar -zxvf ideaIU-2017.3.tar.gz -C $userHomePath/dev/idea
echo "cd $userHomePath/dev/idea/idea-IU-173.3727.127/bin"
cd $userHomePath/dev/idea/idea-IU-173.3727.127/bin
echo "sudo chmod a=+rx ./idea.sh"
sudo chmod a=+rx ./idea.sh
echo "./idea.sh"
./idea.sh

# 如果你在初始化的时候没有创建启动图标
# # 初始化启动图标到系统
# echo "sed -i \"s#\[userHomePath\]#$basepath#g\" $basepath/idea.desktop"
# sed -i "s#\[userHomePath\]#$basepath#g" $basepath/idea.desktop
# echo "sudo $basepath/idea.desktop /usr/share/applications"
# sudo cp $basepath/idea.desktop /usr/share/applications

# 回到当前目录
echo "cd  $basepath"
cd $basepath
