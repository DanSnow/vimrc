#!/bin/bash

prompt_yn() {
  echo $1
  select yn in "Yes" "No"; do
    case $yn in
      Yes)
        return 0
        ;;
      No)
        return 1
        ;;
    esac
  done
  return false
}

git 1> /dev/null 2>&1
if [ $? -eq 127 ]; then
  echo 'git not found. abort'
  exit 1
fi

if prompt_yn "Do you want to remove old files?"; then
  rm -rf ~/.vim ~/.vimrc ~/.gvimrc
fi

cp -rf .vim .vimrc .gvimrc ~
echo "Now install plugin"
vim +PlugInstall +quit
echo done
