" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

let mapleader=","

" Vim-powerline settings
let g:Powerline_cache_enabled = 0


" Ack.vim settings
nnoremap <leader>a :Ack -i <C-R><C-W>


" GoldenView.Vim settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>s <Plug>GoldenViewSwitchMain
nmap <silent> <leader>S <Plug>GoldenViewSwitchToggle


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


" Auto-Pairs settings
autocmd FileType html,xml,php let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '<':'>'}
autocmd FileType tex let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"'"}


" UltiSnips settings
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/ultisnips/UltiSnips'

let g:clang_complete_auto = 0
let g:clang_auto_select = 0
