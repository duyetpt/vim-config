" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

let mapleader=","

" Ack.vim settings
nnoremap <leader>a :Ack -i <C-R><C-W>

" NERDTree settings
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.o$[[file]]', '.class$[[file]]', '.git$[[dir]]']

" Tagbar settings
nnoremap <F4> :TagbarToggle<cr>

" Syntastic settings
let g:syntastic_auto_loc_list = 1
autocmd FileType tex let g:syntastic_quiet_warnings=1
let g:syntastic_c_config_file = '.clang_complete'
let g:syntastic_cpp_config_file = '.clang_complete'
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_remove_include_errors = 1

" UltiSnips settings
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/ultisnips/UltiSnips'

" YouCompleteMe settings
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
