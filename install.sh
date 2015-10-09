#!/bin/bash

prompt_yn() {
  echo "$1"
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

ask_path() {
  read -p "$1" -e -i '~' path
  if [[ -z path ]]; then
    path="$HOME"
  fi
}

git 1> /dev/null 2>&1
if [ $? -eq 127 ]; then
  echo 'git not found. abort'
  exit 1
fi

path="$HOME"

# ask_path 'Please input install directory: '
#
# if prompt_yn "Do you want to remove old files?"; then
#   rm -rf "$path/.vimrc" "$path/.vim"  "$path/.gvimrc"
# fi

cp -rf .vim .vimrc .gvimrc "$path"
echo "Now install plugin"
vim +PlugInstall +qall
echo 'done'
