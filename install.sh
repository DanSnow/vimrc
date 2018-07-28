#!/bin/bash

path="$HOME"

mkdir -p /tmp/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/dein/installer.sh
sh /tmp/dein/installer.sh "$path/plugged"
cp -r .vim .vimrc .gvimrc "$path"
rm /tmp/dein/installer.sh
