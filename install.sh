#!/bin/bash

path="$HOME"

cp -r .vim .vimrc .gvimrc "$path"
echo "Now install plugin"
vim +PlugClean! +PlugInstall +qall
echo 'done'
