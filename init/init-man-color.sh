#########################################################################
# File Name: init-man-color.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-03-01 14:05
#########################################################################
#!/bin/bash

# 个人 home 目录
userHomePath=$(cd `~`; pwd)
echo "当前用户 home 目录: $userHomePath"
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"

echo "添加 man 色彩配置到 $userHomePath/.zshrc ..."
echo "# man 命令配色方案" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_mb=\$'\\E[1m\\E[32m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_mh=\$'\\E[2m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_mr=\$'\\E[7m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_md=\$'\\E[1m\\E[36m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_ZW=\"\"" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_us=\$'\\E[4m\\E[1m\\E[37m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_me=\$'\\E(B\\E[m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_ue=\$'\\E[24m\\E(B\\E[m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_ZO=\"\"" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_ZN=\"\"" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_se=\$'\\E[27m\\E(B\\E[m'" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_ZV=\"\"" >> $userHomePath/.zshrc
echo "export LESS_TERMCAP_so=\$'\\E[1m\\E[33m\\E[44m'" >> $userHomePath/.zshrc
echo "添加 man 色彩配置到 $userHomePath/.zshrc 完成"
