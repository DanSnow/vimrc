let g:unite_source_history_yank_enable = 1
call unite#custom#profile('default', 'context', {
	\   'start_insert': 1,
	\   'winheight': 10,
	\   'direction': 'botright',
	\ })
noremap <C-p> :Unite<cr>
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert filetype<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file file/new directory/new<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
