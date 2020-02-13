# 当前文件所在目录
basepath=$(cd `dirname $0`; pwd)
cd $basepath
# 下载安装包
# wget https://github.com/v2ray/v2ray-core/releases/download/v4.22.1/v2ray-linux-64.zip
curl -OL https://github.com/v2ray/v2ray-core/releases/download/v4.22.1/v2ray-linux-64.zip

unzip -d v2ray-linux-64 v2ray-linux-64.zip

sudo mv v2ray-linux-64 /usr/local/v2ray
# 创建配置文件目录

sudo mkdir /etc/v2ray
# 然后把 v2ray 的配置文件复制到配置文件目录

# 编辑配置，改成你自己的
vi config.json

sudo cp config.json /etc/v2ray/

# 然后试运行 v2ray
cd /usr/local/v2ray
sudo ./v2ray --config=/etc/v2ray/config.json

# 配置系统代理

# 服务成功启动后，去设置系统代理：“打开设置"-"网络"-"系统代理"点击打开代理设置，选“手动”在下面的 Socks 主机：127.0.0.1及端口:10801
# 注：其他的不要填，就填 Socks 主机其他不同填！
# 填完关闭窗口打开 chrome 开被墙地址测试 www.Google.com 是否可以正常打开！顺利的话这样就可以打开被墙地址了，其他浏览器代理插件自己测试。
# 配置开机启动

# 经过前面的配置，v2ray 已经可以正常使用了，但为了方便，我们还要配置开机启动。先把前面运行的 v2ray 退出，然后来到 v2ray 的目录，找到自带的启动脚本稍作修改
cd /usr/local/v2ray/systemd/

# 把里面 ExecStart 对应的值改为：
# /usr/local/v2ray/v2ray -config /etc/v2ray/config.json
sudo vim v2ray.service

# 保存退出
# 然后把这个文件复制到服务目录
sudo cp v2ray.service /lib/systemd/system/

# 最后启动服务并设置开机启动
sudo systemctl start v2ray.service
sudo systemctl enable v2ray.service

# 桌面快捷键文件
cd $basepath
sudo mv v2ray.Desktop /usr/local/v2ray/
