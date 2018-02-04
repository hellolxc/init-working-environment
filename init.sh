#!/bin/sh
clear
if [ `id -u` -eq 0 ];then
    echo "启动安装程序"
else
    echo "请在ROOT用户权限下运行"
    exit
fi
echo "卸载软件"
echo y | sudo apt-get remove libreoffice-common
echo y | sudo apt-get remove unity-webapps-common
echo "更新系统"
echo y | sudo apt-get update
echo y | sudo apt-get upgrade

echo "开始安装Moeditor"
echo y | sudo apt-get install moeditor

echo "开始安装Shutter"
echo y | sudo apt-get install shutter

echo "开始安装filezilla"
echo y | sudo apt-get install filezilla

echo "开始安装vim"
echo y | sudo apt-get install vim

echo "开始安装ssh"
echo y | sudo apt-get install ssh

echo "开始安装Git"
echo y | sudo apt-get install git

echo "配置Git用户信息"
git config --global user.name "LXC"
git config --global user.email lxc_yx@139.com

echo "开始安装docker"
echo y | sudo apt-get install docker

echo "开始安装wireshark"
echo y | sudo apt-get install wireshark

echo "开始安装psensor"
echo y | sudo apt-get install psensor

echo "开始安装uget"
echo y | sudo apt-get install uget

echo "开始安装bleachbit"
echo y | sudo apt-get install bleachbit

echo "开始安装xpad"
echo y | sudo apt-get install xpad

echo "开始安装ffmpeg"
echo y | sudo apt-get install ffmpeg

#echo "开始安装obs"
#echo y | sudo add-apt-repository ppa:obsproject/obs-studio
#echo y | sudo apt-get update && sudo apt-get install obs-studio

echo "开始安装kcachegrind"
echo y | sudo apt-get install kcachegrind

echo "开始安装kchmviewer"
echo y | sudo apt-get install kchmviewer

echo "开始安装virtualbox"
echo y | sudo apt-get install virtualbox

echo "开始安装transmission"
echo y | sudo apt-get install transmission

echo "开始安装nodejs"
echo y | sudo apt-get install nodejs
echo y | sudo apt-get install npm

echo "开始安装ruby"
echo y | sudo apt-get install ruby-full

echo "开始安装chorme"
echo y | sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
echo y | wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
echo y | sudo apt-get update
echo y | sudo apt-get install google-chrome-stable

echo "安装坚果云"
wget https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb
sudo dpkg -i nautilus_nutstore_amd64.deb
sudo apt-get install -f
rm nautilus_nutstore_amd64.deb

echo "------------------------------美化主题--------------------------------"

echo "设置壁纸"
wget https://github.com/hellolxc/init-working-environment/blob/master/wallpaper/1.jpg?raw=true -O 1.jpg
gsettings set org.gnome.desktop.background picture-uri "file:`pwd`/1.jpg"
rm 1.jpg

echo "安装Unity tweak tool"
echo y | sudo apt-get install unity-tweak-tool

echo "安装Numix主题和图标"
echo y | sudo add-apt-repository ppa:numix/ppa
echo y | sudo apt-get update
echo y | sudo apt-get install numix-gtk-theme numix-icon-theme-circle

echo "安装ultra-flat-icons图标"
echo y | sudo add-apt-repository ppa:noobslab/icons
echo y | sudo apt-get update
echo y | sudo apt-get install ultra-flat-icons
echo y | sudo apt-get install ultra-flat-icons-orange
echo y | sudo apt-get install ultra-flat-icons-green

echo "安装flatabulous-theme主题"
echo y | sudo add-apt-repository ppa:noobslab/themes
echo y | sudo apt-get update
echo y | sudo apt-get install flatabulous-theme

echo "安装Docky"
echo y | sudo apt-get install docky

echo "安装shadowsocks客户端"
echo y | sudo add-apt-repository ppa:hzwhuang/ss-qt5
echo y | sudo apt-get update
echo y | sudo apt-get install shadowsocks-qt5

echo "安装Mysql-workbench"
echo y | sudo apt-get install mysql-workbench

echo "安装为知笔记"
echo y | sudo add-apt-repository ppa:wiznote-team
echo y | sudo apt-get update
echo y | sudo apt-get install wiznote

echo "安装数字雨"
echo y | sudo apt-get install cmatrix

echo "下载WPS"
wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
sudo dpkg -i wps-office_10.1.0.5672~a21_amd64.deb && sudo apt-get -f install

echo "下载Postman"
wget https://dl.pstmn.io/download/latest/linux64
sudo tar -xf linux64 -C /opt/

echo "下载Atom"
wget https://atom.io/download/deb
sudo dpkg -i deb
sudo apt-get install -f

echo '---------------------------安装开发环境-----------------------------'
echo "安装Nginx"
echo y | sudo apt-get install nginx

echo "安装Mysql"
echo y | sudo apt-get install mysql-server

echo "安装PHP"
echo y | sudo apt-get install php

echo '------------------------------安装PHP扩展----------------------------------'
echo y | sudo apt install php-codesniffer
echo y | sudo apt install php-pear
echo y | sudo apt-get install php-zip
echo y | sudo apt-get install php-mbstring
echo y | sudo apt-get install php-mcrypt
echo y | sudo apt-get install php-memcache
echo y | sudo apt-get install php-memcached
echo y | sudo apt-get install php-xml
echo y | sudo apt-get install php-curl
echo y | sudo apt-get install php-xdebug
echo y | sudo pecl install swoole


echo  "---------------------------安装Composer系列---------------------------------"
echo "安装composer"
echo y | sudo apt-get install composer

echo "配置中国镜像"
composer config -g repo.packagist composer https://packagist.phpcomposer.com

echo "退出ROOT权限"
exit

echo "安装PHP-FIXER"
composer global require fabpot/php-cs-fixer

echo "安装Lumen"
composer global require "laravel/lumen-installer"

echo "安装laravel"
composer global require "laravel/installer"


echo "-----------------------其他软件----------------------------"
#QQ
firefox http://www.ubuntukylin.com/applications/showimg.php?lang=cn&id=23
#WECHAT
firefox https://github.com/geeeeeeeeek/electronic-wechat/releases


echo "火狐浏览器插件
    New Tab Override
	Firebug
	Proxy SwtichyOmega
	User-Agent-Switcher"

echo "谷歌浏览器
	Adblock Plus
	Axure RP Extension for Chrome
	EditThisCookie"
