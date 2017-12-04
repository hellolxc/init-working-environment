#!/bin/sh
clear
if [ `id -u` -eq 0 ];then  
    echo "启动安装程序"  
else  
    echo "请在ROOT用户权限下运行"
    exit
fi 
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

echo "开始安装obs"
echo y | sudo add-apt-repository ppa:obsproject/obs-studio
echo y | sudo apt-get update && sudo apt-get install obs-studio

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

echo "火狐浏览器插件
	RESTED
	Adblock Plus
	Firebug
	ReloadEvery
	Title
	User-Agent-Switcher"

echo "谷歌浏览器
	Adblock Plus
	ApiDebug
	Axure RP Extension for Chrome
	EditThisCookie
	穹顶穿越
	RESTED"

