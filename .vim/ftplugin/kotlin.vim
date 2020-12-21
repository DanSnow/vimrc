if exists('b:user_ftplugin')
  finish
endif

let b:user_ftplugin = 1

setlocal sw=4
setlocal ts=4
setlocal sts=4

au FileType kotlin setlocal sw=4
au FileType kotlin setlocal ts=4
au FileType kotlin setlocal sts=4
