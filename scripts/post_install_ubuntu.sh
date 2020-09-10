#!/bin/sh
# Author: Mai Huy Hoang
# Usage: Any Ubuntu distro base post installation

sudo apt update
sudo apt upgrade
sudo apt install git g++ python3 ubuntu-restricted-extras python3-pip vim snapd ibus fzf zsh xclip

# Fix time difference dual boot with Windows
timedatectl set-local-rtc 1 --adjust-system-clock

echo "Installing drivers"
sudo ubuntu-drivers autoinstall


echo "Installing Calibre"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

echo "Installing Spotify"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

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

echo "Installing Skype"
wget https://repo.skype.com/latest/skypeforlinux-64.deb -p ~/Downloads
sudo apt install ~/Downloads/skypeforlinux-64.deb
rm ~/Downloads/skypeforlinux-64.deb

echo "Installing Telegram"
sudo apt install telegram-desktop

echo "Installing VSCode"
wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O ~/Downloads/vscode-amd64.deb
sudo apt install ~/Downloads/vscode-amd64.deb
rm ~/Downloads/vscode-amd64.deb

