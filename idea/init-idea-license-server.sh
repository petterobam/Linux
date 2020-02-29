#########################################################################
# File Name: init-idea-license-server.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-02-29 17:00
#########################################################################
#!/bin/bash

# 个人 home 目录
userHomePath=$(cd `~`; pwd)
echo "当前用户 home 目录: $userHomePath"
# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $basepath"

echo "sudo mkdir -p /var/local/idea/"
sudo mkdir -p /var/local/idea/
echo "sudo cp $basepath/LicenseServer/IntelliJIDEALicenseServer_linux_amd64 /var/local/idea/"
sudo cp $basepath/LicenseServer/IntelliJIDEALicenseServer_linux_amd64 /var/local/idea/
echo "sudo chmod +x /var/local/idea/IntelliJIDEALicenseServer_linux_amd64"
sudo chmod +x /var/local/idea/IntelliJIDEALicenseServer_linux_amd64
echo "sudo cp $basepath/LicenseServer/idea-license.service /etc/systemd/system/"
sudo cp $basepath/LicenseServer/idea-license.service /etc/systemd/system/
echo "sudo systemctl enable idea-license"
sudo systemctl enable idea-license
echo "sudo systemctl start idea-license"
sudo systemctl start idea-license
echo "idea license server 服务已经注入：http://127.0.0.1:8666"
echo "通过 sudo systemctl start|stop idea-license 控制服务"
