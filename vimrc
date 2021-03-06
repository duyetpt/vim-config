""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugins                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable plugins
try
    source ~/.vim/plugins.vim
    source ~/.vim/plugins_config.vim
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         General                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically source the .vimrc when it is saved
autocmd! bufwritepost .vimrc source %

" Show both relative and absolute line numbers.
set relativenumber
set number

" Not compatible with vi
set nocompatible

" Automatically read a file when it is changed from the outside
set autoread

set nocursorline

set nocursorcolumn


" leave 3 lines between cursor and screen edge when scrolling
set scrolloff=3

" Rebind for leaving insert mode
inoremap jj <ESC>

" have semicolon default to colon in normal and visual mode
nnoremap ; :
vnoremap ; :

" No backup files
set nobackup
set nowritebackup
set noswapfile

" Use mouse in all mode
set mouse=a

" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp949

" File formats
set fileformats=unix,dos,mac

" timeout
set timeoutlen=500

" Hide a buffer when it is abandoned
set hidden

" To toggle the paste mode
set pastetoggle=<F2>

" Set the clipboard
"set clipboard=unnamedplus

" History
set history=50

" Undo
" set undolevels=50
" Ignore filenames
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.a,*.o,*.so.*

" Don't redraw while executing macros
set ttyfast
set lazyredraw
set ttyscroll=3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      User Interface                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Only toggle a menu when using complete
set completeopt=menu

" Show line number
set number

" Show the current postion
set ruler

" Show the status line
set laststatus=2

" Show matching brackets
set showmatch

" The time of blinking when matching brackets
set matchtime=0

" Enable syntax highlighting
" syntax off
syntax on
syntax sync minlines=200
set synmaxcol=120
set regexpengine=1

" Set colors
" set t_Co=256

" colorscheme
try
	colorscheme molokai
catch
	colorscheme desert
endtry
highlight MatchParen ctermbg=None ctermfg=Red cterm=bold
highlight Conceal ctermbg=None

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               Text, Tab, Indent, Backspace               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Text width
set textwidth=80

" Color the column 80
set colorcolumn=80
highlight ColorColumn ctermbg=235
highlight link OverLength ColorColumn
exec 'match OverLength /\%'.&cc.'v.\+/'

" Don't automatically wrap on load
set nowrap

" Don't automatically wrap text when typing
set fo-=t

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Tab width
set tabstop=4
set softtabstop=4

" Shift
set shiftwidth=4
set shiftround

" Auto indent
set autoindent

" Smart indent
set smartindent

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Search                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Using regular expressions easily
set magic

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Mappings                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map j gj
map k gk

" Disable highlight
noremap <silent> <leader><cr> :noh<cr>

" Quick quit command
nnoremap <leader>e :quit<cr>
nnoremap <leader>E :qa!<cr>

" Easier moving between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving between tabs
nnoremap <leader>n <esc>:tabprevious<cr>
nnoremap <leader>m <esc>:tabnext<cr>

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Copy content to clipboard
vnoremap <c-c> y:call CopyToClipboard()<cr>

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
map <c-v> <MiddleMouse>
map! <c-v> <MiddleMouse>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Autocmd, Helper Functions                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent
autocmd FileType c,cpp set cindent
autocmd FileType html,xhtml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Colorcolumn
autocmd FileType php setlocal textwidth=120 colorcolumn=120
autocmd FileType php exec 'match OverLength /\%'.&cc.'v.\+/'
autocmd FileType markdown highlight clear ColorColumn

" Build and run(just available for a single source code)
autocmd FileType c imap <F9> <esc>:w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType c nmap <F9> :w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType cpp imap <F9> <esc>:w<cr>:!clear && g++ % -o %< && ./%<<cr>
autocmd FileType cpp nmap <F9> :w<cr>:!clear && g++ % -o %< && ./%<<cr>
autocmd FileType python imap <F9> <esc>:w<cr>:!clear && python %<cr>
autocmd FileType python nmap <F9> :w<cr>:!clear && python %<cr>
autocmd FileType ruby imap <F9> <esc>:w<cr>:!clear && ruby %<cr>
autocmd FileType ruby nmap <F9> :w<cr>:!clear && ruby %<cr>
autocmd FileType sh imap <F9> <esc>:w<cr>:!clear && sh %<cr>
autocmd FileType sh nmap <F9> :w<cr>:!clear && sh %<cr>

" Make
autocmd FileType c,cpp,tex imap <F5> <esc>:w<cr>:copen<cr>:make<cr>
autocmd FileType c,cpp,tex nmap <F5> :w<cr>:copen<cr>:make<cr>
" autocmd QuickFixCmdPost * :copen

" filetype settings
let g:tex_flavor = 'latex'
autocmd bufread,bufnewfile *.md :set filetype=markdown
au BufRead,BufNewFile *.txt,*.tex set wrap linebreak nolist textwidth=0 wrapmargin=0 spell spelllang=en_us

" Delete trailing white space on save, useful for Python
function! DeleteTrailingWS()
    if index(['markdown'], &ft) == -1
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
    end
endfunction
autocmd! bufwritepre * :call DeleteTrailingWS()

" Auto generate tags
function! CreateTags()
    :silent !ctags -R
    exec "redraw!"
endfunction
"autocmd! bufwritepost *.h,*.c,*.cpp call CreateTags()

" Copy content to clipboard
function! CopyToClipboard()
python << EOF
import vim
from subprocess import Popen, PIPE

try:
    p = Popen(['xsel', '-bi'], stdin=PIPE)
    p.communicate(input=vim.eval('@0'))
    print('yanked')
except:
    vim.command('echohl Error')
    error = "The content isn't yanked, please install xsel to your system."
    vim.command('echoerr "%s"' % error)
    vim.command('echohl None')
EOF
endfunction

