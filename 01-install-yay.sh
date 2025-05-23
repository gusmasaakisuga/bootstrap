#!/bin/sh

# install yay
sudo pacman -S git fakeroot binutils make gcc base-devel
REPO = $HOME/repo
mkdir $REPO
cd $REPO

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

