let do_syntax_sel_menu = 1
runtime! synmenu.vim
aunmenu &Syntax.&Show\ filetypes\ in\ menu
" set guifont=Input\ 11
set guifont=Larabiefont\ 10 " Inconsolata
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif
" set clipboard=unammedplus
