#!/bin/bash

distro="yum"
instcommnd="yum install -y "
updcommnd="yum update && yum upgrade"
apps="dnf git stow neovim zsh bat"

yum update -y
yum upgrade -y
yum install -y dnf git stow neovim zsh bat
dnf remove zsh -y
dnf install curl git make ncurses-devel gcc autoconf man -y
yum install wget http://repo.openfusion.net/centos7-x86_64/bat-0.7.0-1.of.el7.x86_64.rpm
git clone -b zsh-5.8.1 https://github.com/zsh-users/zsh.git /tmp/zsh
cd /tmp/zsh
./Util/preconfig
./configure
make -j 20 install.bin install.modules install.fns
rm -rf /tmp/zsh
#command -v zsh | tee -a /etc/shells   # lo metemos en el script de usuarios?
#chsh -s $(which zsh)  # modificar ficher /etc/default/useradd para aplicar a todos los usuarios




