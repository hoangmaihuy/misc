#!/bin/sh
# Author: Mai Huy Hoang
# Usage: Any Ubuntu distro base post installation

sudo apt update
sudo apt upgrade
sudo apt install git g++ python3 ubuntu-restricted-extras python3-pip vim snapd ibus fzf

# Fix time difference dual boot with Windows
timedatectl set-local-rtc 1 --adjust-system-clock

echo "Installing drivers"
sudo ubuntu-drivers autoinstall

# Symlink .vimrc
rm -f ~/.vimrc
ln -sv $(pwd)/.vimrc ~

echo "Installing Calibre"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

echo "Installing WPS Office"
wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9615/wps-office_11.1.0.9615.XA_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/wps-office_11.1.0.9615.XA_amd64.deb
rm -f ~/Downloads/wps-office_11.1.0.9615.XA_amd64.deb

echo "Installing ibus-bamboo"
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
ibus restart

echo "Installing Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb
rm ~/Downloads/google-chrome-stable_current_amd64.deb

echo "Installing Snap packages"
sudo snap refresh
sudo snap install spotify
sudo snap install code --classic
sudo snap install pycharm-professional --classic
sudo snap install datagrip --classic
sudo snap install vlc


