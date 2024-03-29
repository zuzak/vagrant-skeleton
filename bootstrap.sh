#!/usr/bin/env bash
sudo apt-get -y install bash vim-nox git htop
chsh -s `which bash`
sed -i 's/# en_GB.UTF-8 UTF-8/en_GB.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen
cd ~vagrant
sudo -u vagrant git clone https://github.com/zuzak/dotfiles .dotfiles > /dev/null 2>&1 || true
cd .dotfiles
sudo -u vagrant git pull
sudo -u vagrant git submodule init
sudo -u vagrant git submodule update
sudo -u vagrant make basic
